;=============================================================================
; boot_title.asm
;=============================================================================
;
; Start-up, title screen, attract loop and control selection
;
; This module is the front end of the game. It holds the entry point reached
; from the cartridge loader, which sets up the video chip and the default
; high-score table, and then the whole pre-game cycle: the title screen with
; its color-cycling logo, the high-score page, the attract-mode demo run,
; the instructions page, and the joystick/keyboard choice that ends in a new
; game.
;
; The front end is an attract loop with asynchronous exits through CINV:
;   initialize_game -> show_title_sequence (logo, then high scores) -> run_attract_intro
;   run_attract_intro -> intro_walk_right / intro title animation -> flash_title_lettering
;   flash_title_lettering -> wait_before_attract_restart -> restart_attract_mode -> show_title_sequence
; While handle_title_keys_irq is installed, F1 abandons the interrupted sequence for
; show_instructions -> wait_before_attract_restart; SPACE abandons it for select_controls
; -> start_new_game -> set_lives_start. Both exits reset SP instead of returning
; through the interrupted IRQ. intro_begin temporarily uses the intro IRQs;
; run_attract_intro reinstalls the title-key handler after that cinematic returns.
;
; clear_screen and restore_kernal_irq are small helpers other code can reuse.
; Delay durations below are approximate busy-loop timings, not frame counts;
; IRQ work and the machine clock affect the elapsed time.
;
;
; Routines:
;
;   initialize_game                         Entry point: set up the video chip and the high-score table, then show the title screen.
;
;   clear_screen                            Clear the screen and show the two prompt lines at the bottom.
;
;   show_title_sequence                     Title screen: logo with color cycling, then the high-score page and the intro run.
;
;   draw_high_scores                        Draw the high-score page: heading, column headers, five entries and the color bands.
;
;   get_title_color_for_increment           Cycle the current title-picture color, wrapping at yellow.
;
;   run_attract_intro                       Run the intro demo with the title keys active.
;
;   handle_title_keys_irq                   IRQ handler of the title screen: F1 shows the instructions, SPACE starts the game.
;
;   exit_attract_mode_to_control_selection  Leave the attract mode and go to the control selection.
;
;   restore_kernal_irq                      Restore the IRQ vector back to the normal KERNAL interrupt routine.
;
;   show_instructions                       Show the instructions page for about 10 seconds.
;
;   wait_before_attract_restart             Wait about 10 seconds, then restart the attract mode.
;
;   disable_sprites_and_restore_kernal_irq  Switch all sprites off and restore the KERNAL IRQ.
;
;   flash_title_lettering                   Flash the title lettering of the intro for about 5 seconds.
;
;   restart_attract_mode                    Switch the sprites off and return to the title screen.
;
;   select_controls                         Ask for the control method (joystick or keyboard) and show the matching help.
;
;   start_new_game                          Start a new game: wait, run the intro demo, reset the game variables.
;=============================================================================
;
; ---------------------------------------------------------------------------
; Constants
; ---------------------------------------------------------------------------

; ---- Video setup
CHR_LOCK_CASE     = 8                         ; CHROUT code: disable the Commodore/Shift character-set switch
VIC_BANK_BASE     = $4000                     ; start of the VIC bank the game uses (bank 1)
CIA2_DDRA_VIC     = $3F                       ; CIA 2 port A direction: the VIC bank bits and the serial lines are outputs
CIA2_PRA_BANK1    = $C6                       ; CIA 2 port A: bits 0-1 = %10 select VIC bank 1
VIC_MEMPTR_VALUE  = ((SCREEN-VIC_BANK_BASE)/$400)<<4 | ((CHARSET-VIC_BANK_BASE)/$800)<<1; screen at SCREEN and character set at CHARSET, as offsets in the VIC bank
VIC_CTRL2_VALUE   = $D8                       ; multicolor text mode (bit 4) and 40 columns (bit 3)

; ---- Clearing the screen
PROMPT_ROW        = 23                        ; row of the first prompt line (the second one is below it)
PROMPT_COL        = 7                         ; column of the prompt lines
PROMPT_LEN        = 25                        ; characters of a prompt line

; ---- Title screen
TITLE_PIC         = 5*SCREEN_COLS+5           ; screen offset of the title picture: row 5, column 5
TITLE_PIC_SIZE    = 590                       ; characters of the title picture
TITLE_TEXT_LEN    = 14                        ; characters of each of the three title text lines
TITLE_OCEAN       = 1*SCREEN_COLS+13          ; screen offset of "OCEAN SOFTWARE": row 1, column 13
TITLE_PRESENTS    = 3*SCREEN_COLS+13          ; screen offset of "PRESENTS": row 3, column 13
TITLE_AUTHOR      = 21*SCREEN_COLS+25         ; screen offset of "BY J.STEELE": row 21, column 25
COLOR_MASK        = 7                         ; the picture cycles through colors 1-7 (black is skipped)
TITLE_CYCLE_PASSES= 17                        ; color steps of the picture, about 0.33 s each
TITLE_HOLD_PASSES = 16                        ; delay passes of about 0.33 s before the high-score page
BONUS_TEXT        = 16*SCREEN_COLS+11         ; screen offset of "BONUS MAN AT 10000": row 16, column 11
BONUS_TEXT_LEN    = 18                        ; characters of that text

; ---- High-score page layout
HS_TEXT_LEN       = 7                         ; characters of a table heading text and of a score
HS_INITIALS_LEN   = 3                         ; initials per entry (also the length of "NO.")
HS_HEAD           = 16                        ; screen offset of the heading "HISCORE": row 0, column 16
HS_TOP_SCORE      = 1*SCREEN_COLS+16          ; the best score under the heading: row 1, column 16
HS_LEAGUE         = 3*SCREEN_COLS+9           ; "LEAGUE": row 3, column 9
HS_ORDER          = 4*SCREEN_COLS+9           ; "ORDER": row 4, column 9
HS_SCORE_HEAD     = 3*SCREEN_COLS+17          ; "SCORE": row 3, column 17
HS_NAME_HEAD      = 3*SCREEN_COLS+26          ; "NAME.": row 3, column 26
HS_RANK_POS       = 5*SCREEN_COLS+10          ; "NO." of the first entry: row 5, column 10
HS_NUMBER_POS     = 5*SCREEN_COLS+13          ; rank digit of the first entry: row 5, column 13
HS_SCORE_POS      = 5*SCREEN_COLS+17          ; score of the first entry: row 5, column 17
HS_NAME_POS       = 5*SCREEN_COLS+27          ; initials of the first entry: row 5, column 27
HS_ROW_STEP       = 2*SCREEN_COLS             ; entries are two screen rows apart (also the size of a color band)
HS_BAND_ROW       = 3                         ; first row of the color bands
HS_BANDS          = 6                         ; color bands: the heading rows and the five entries

; ---- Title picture color cycle
TITLE_PIC_COLOR   = COLORRAM+5*SCREEN_COLS+5  ; color RAM cell of the first character of the title picture
COL_YELLOW        = 7                         ; VIC color 7: the last color of the cycle (the cycle skips black, color 0)

; ---- Title keys
KEY_NONE          = $40                       ; ZP_CURKEY value: no key pressed
KEY_F1            = $04                       ; ZP_CURKEY value: F1
KEY_SPACE         = $3C                       ; ZP_CURKEY value: SPACE
STACK_RESET       = $F8                       ; stack pointer after the reset (the interrupted context is dropped)

; ---- Instructions page
INSTR_LEN         = 26                        ; characters of an instruction line
INSTR_COL         = 7                         ; column of the instruction lines
BELL_ICON_1       = 10*SCREEN_COLS+20         ; first bell picture: row 10, column 20
BELL_ICON_2       = 16*SCREEN_COLS+12         ; second bell picture: row 16, column 12
CTRL_PROMPT_POS   = 4*SCREEN_COLS+3           ; "JOYSTICK OR KEYBOARD CONTROLS HERO": row 4, column 3
CTRL_PROMPT_LEN   = 34                        ; characters of that text
ATTRACT_PASSES    = 31                        ; delay passes of about 0.33 s: the instructions stay for about 10 s

; ---- Flashing title lettering
TITLE_LETTERS     = 9*SCREEN_COLS+11          ; first cell of the title lettering the intro draws: row 9, column 11 (2 rows of 18)
TITLE_LETTERS_LEN = 18                        ; columns of the lettering
LETTER_FLASH_STEPS= 64                        ; toggles of the color
LETTER_FLASH_BIT  = $04                       ; color bit that is toggled
LETTER_FLASH_DELAY= $40                       ; outer count of the delay per toggle: about 83 ms

; ---- Control selection
SELECT_COL        = 16                        ; column of the four selection texts
SELECT_LEN        = 8                         ; characters of each selection text
KEY_J             = $4A                       ; PETSCII code of J (joystick)
KEY_K             = $4B                       ; PETSCII code of K (keyboard)
CONTROL_KEYBOARD  = 1                         ; control_mode value for the keyboard (0 = joystick)
PLACE_JOY_POS     = 15*SCREEN_COLS+8          ; "PLACE JOYSTICK IN PORT 2": row 15, column 8
PLACE_JOY_LEN     = 24                        ; characters of that text
KBD_HELP_LEN      = 18                        ; characters of a keyboard help line
KBD_HELP_COL      = 11                        ; column of the keyboard help lines

; ---- Game start
START_PAUSE       = 22                        ; delay passes before the game starts: 22 x 64k loop iterations, about 7 seconds
GAME_VARS         = 12                        ; bytes from clear_block to extra_life_given, cleared at the start of a game

; ---------------------------------------------------------------------------
; Variables
; ---------------------------------------------------------------------------

; ---- Initialization-only locations
; No explicit reads of $0342-$0344 occur in the supplied game source.
; This is a static-reference finding, not proof against indirect access.
unused_0342 = $0342
unused_0343 = $0343
unused_0344 = $0344

; ---- Contiguous new-game reset block (12 bytes, $0345-$0350 inclusive)
; $0345        unnamed byte
; $0346        facing
; $0347        unnamed byte
; $0348        bells
; $0349-$034F  score[0..6]
; $0350        extra_life_given
; lives ($0351) is outside this block and is set by set_lives_start.
clear_block = $0345

;=============================================================================
; initialize_game
;=============================================================================
;
; Game entry: sets up video chip and the high-score table, then shows the title screen.
;
; - Locks out the character-set switch of the Commodore and Shift keys.
; - Sets up VIC chip to use bank 1
; - Sets up the video mode and colors
; - Sets up the initial high score table
;
; Inputs  : tbl_hs_defaults
;
; Changes : video/CIA setup, sprite multicolors, HISCORE
;
;=============================================================================
        .segment "S_4000"
initialize_game:
        ;---------------------------------------------------------------------
        ; Lock the character set: CHROUT code 8 disables the Commodore/Shift case switch
        ;---------------------------------------------------------------------
        lda  #CHR_LOCK_CASE
        jsr  CHROUT

        ;---------------------------------------------------------------------
        ; VIC bank 1: CIA 2 port A bits 0-1 become outputs and select the bank
        ;---------------------------------------------------------------------
        lda  #CIA2_DDRA_VIC
        sta  CIA2_DDRA
        lda  #CIA2_PRA_BANK1
        sta  CIA2_PRA

        ;---------------------------------------------------------------------
        ; Set screen and character set addresses, multicolor text mode,
        ; black border and background, dark grey for multicolor 1
        ;---------------------------------------------------------------------
        lda  #VIC_MEMPTR_VALUE
        sta  VIC_MEMPTR
        lda  #VIC_CTRL2_VALUE
        sta  VIC_CTRL2
        lda  #$00
        sta  VIC_BORDER
        sta  VIC_BG0
        lda  #COL_DKGREY
        sta  VIC_BG1

        ;---------------------------------------------------------------------
        ; Background color white and the sprite multicolors
        ;---------------------------------------------------------------------
        lda  #COL_WHITE
        jsr  set_sprite_multicolors

        ;---------------------------------------------------------------------
        ; Default high-score table into HISCORE
        ;---------------------------------------------------------------------
        ldx  #HS_ENTRIES * HS_ENTRY_SIZE - 1
copy_hs_defaults:
        lda  tbl_hs_defaults,x
        sta  HISCORE,x
        dex
        bpl  copy_hs_defaults
        jmp  show_title_sequence

;=============================================================================
; clear_screen
;=============================================================================
;
; Clears the screen and shows the two prompt lines at the bottom.
;
; - Sets all screen characters to spaces and the color RAM to white.
; - Prints message at rows 23 and 24: "PRESS F1 FOR INSTRUCTIONS" and "OR SPACE TO START"
;
; Changes : SCREEN, COLORRAM
;
;=============================================================================
        .segment "S_4039"
clear_screen:
        ;---------------------------------------------------------------------
        ; Clear the 1000 screen characters with spaces and set the color RAM to white
        ;---------------------------------------------------------------------
        ldx  #$00
clear_screen_loop:
        lda  #CHAR_SPACE
        sta  SCREEN,x
        sta  SCREEN + PAGE,x
        sta  SCREEN + 2 * PAGE,x
        sta  SCREEN + COPY_TAIL,x
        lda  #COL_WHITE
        sta  COLORRAM,x
        sta  COLORRAM + PAGE,x
        sta  COLORRAM + 2 * PAGE,x
        sta  COLORRAM + COPY_TAIL,x
        inx
        bne  clear_screen_loop

        ldx  #PROMPT_LEN-1
prompt_text_loop:
        lda  txt_press_f1,x
        sta  SCREEN+PROMPT_ROW*SCREEN_COLS+PROMPT_COL,x
        lda  txt_or_space,x
        sta  SCREEN+(PROMPT_ROW+1)*SCREEN_COLS+PROMPT_COL,x
        dex
        bpl  prompt_text_loop
        rts

;=============================================================================
; show_title_sequence
;=============================================================================
;
; Show logo with color cycling, then the high-score page and then switches to demo mode.
;
; - Turn off sound and clear the screen
; - Hook the title-key IRQ handler so that F1 and SPACE keys work
; - Copies the title logo to screen
; - Prints the "Ocean software presents..." message
; - Cycles the logo colors for about 5 seconds
; - Shows the high-score table
; - Switches to the demo/attract mode
;
; Changes : display, SID/music state, CINV
;
;=============================================================================
        .segment "S_406C"
show_title_sequence:
        ;---------------------------------------------------------------------
        ; Silence the sound, clear the screen (with the prompt lines) and hook the title-key IRQ
        ;---------------------------------------------------------------------
        jsr  volume_off_clear_screen
        sei
        lda  #<handle_title_keys_irq
        sta  CINV
        lda  #>handle_title_keys_irq
        sta  CINV+1
        cli

        ;---------------------------------------------------------------------
        ; Cover all 590 logo cells with blocks at offsets 0, 256 and 334.
        ; The last two overlap by 178 bytes; repeated writes use the same data.
        ; X visits 0, $FF..$01: DEX/BNE from zero executes 256 iterations.
        ;---------------------------------------------------------------------
        ldx  #$00
copy_title_picture_loop:
        lda  data_title_picture,x
        sta  SCREEN+TITLE_PIC,x
        lda  data_title_picture+PAGE,x
        sta  SCREEN+TITLE_PIC+PAGE,x
        lda  data_title_picture+TITLE_PIC_SIZE-PAGE,x
        sta  SCREEN+TITLE_PIC+TITLE_PIC_SIZE-PAGE,x
        dex
        bne  copy_title_picture_loop

        ;---------------------------------------------------------------------
        ; Print "OCEAN SOFTWARE", "PRESENTS" and the author line; the first and the last in green
        ;---------------------------------------------------------------------
        ldx  #TITLE_TEXT_LEN-1
title_text_loop:
        lda  txt_ocean,x
        sta  SCREEN+TITLE_OCEAN,x
        lda  txt_presents,x
        sta  SCREEN+TITLE_PRESENTS,x
        lda  txt_author,x
        sta  SCREEN+TITLE_AUTHOR,x
        lda  #COL_GREEN
        sta  COLORRAM+TITLE_OCEAN,x
        sta  COLORRAM+TITLE_AUTHOR,x
        dex
        bpl  title_text_loop

        ;---------------------------------------------------------------------
        ; Do 17 color steps of the picture through colors 1-7, about 0.33 s each
        ;---------------------------------------------------------------------
        lda  #TITLE_CYCLE_PASSES
        sta  cnt
color_cycle_pass:
        jsr  get_title_color_for_increment         ; X = current picture color (0 if it was 7)
        inx                         ; helper maps 7 to 0, so this skips black
        txa
        and  #COLOR_MASK
        ldx  #$00
picture_color_loop:
        sta  COLORRAM+TITLE_PIC+TITLE_PIC_SIZE-PAGE,x
        sta  COLORRAM+TITLE_PIC+PAGE,x
        sta  COLORRAM+TITLE_PIC,x
        inx
        bne  picture_color_loop
        ldx  #$00
cycle_delay_mid:
        ; Zero-initialized DEY/BNE and DEX/BNE each run 256 iterations.
        ; Together these form 65,536 inner iterations per delay pass.
        ldy  #$00
cycle_delay_inner:
        dey
        bne  cycle_delay_inner
        dex
        bne  cycle_delay_mid
        dec  cnt
        bne  color_cycle_pass

        ;---------------------------------------------------------------------
        ; Do 16 more delay passes (about 5 s) with the picture still
        ;---------------------------------------------------------------------
        lda  #TITLE_HOLD_PASSES
        sta  cnt
hold_pass:
        ldx  #$00
hold_delay_mid:
        ldy  #$00
hold_delay_inner:
        dey
        bne  hold_delay_inner
        dex
        bne  hold_delay_mid
        dec  cnt
        bne  hold_pass

        ;---------------------------------------------------------------------
        ; Show the high-score page: the table and "BONUS MAN AT 10000" in red
        ;---------------------------------------------------------------------
        jsr  clear_screen
        jsr  draw_high_scores
        ldx  #BONUS_TEXT_LEN-1
bonus_text_loop:
        lda  txt_bonus_man,x
        sta  SCREEN+BONUS_TEXT,x
        lda  #COL_RED
        sta  COLORRAM+BONUS_TEXT,x
        dex
        bpl  bonus_text_loop
        jmp  run_attract_intro

;=============================================================================
; draw_high_scores
;=============================================================================
;
; Draw the high-score page: heading, column headers, five entries and the color bands.
;
; The page has the heading "HISCORE" with the best score under it.
; Then the headers "LEAGUE ORDER", "SCORE" and "NAME.".
; Then five entries, two screen rows apart.
; Each entry shows "NO." and its rank digit, the 7 score digits and the 3 initials from HISCORE.
;
; The color RAM is filled in six bands of two rows (rows 3 to 14), one color of tbl_hs_row_cols for each, the last color first.
;
; Inputs  : HISCORE, high-score text/color tables.
; Changes : SCREEN, COLORRAM
;
;=============================================================================
        .segment "S_4103"
draw_high_scores:
        ;---------------------------------------------------------------------
        ; Print texts of the table: heading, best score, column heads, and the 7 score digits of every entry
        ;---------------------------------------------------------------------
        ldx  #HS_TEXT_LEN-1
hs_text_loop:
        lda  tbl_hs_text5,x
        sta  SCREEN+HS_HEAD,x
        lda  HISCORE,x
        sta  SCREEN+HS_TOP_SCORE,x
        lda  tbl_hs_text4,x
        sta  SCREEN+HS_LEAGUE,x
        lda  tbl_hs_text3,x
        sta  SCREEN+HS_ORDER,x
        lda  tbl_hs_text2,x
        sta  SCREEN+HS_SCORE_HEAD,x
        lda  tbl_hs_text1,x
        sta  SCREEN+HS_NAME_HEAD,x
        lda  HISCORE,x
        sta  SCREEN+HS_SCORE_POS,x
        lda  HISCORE+HS_ENTRY_SIZE,x
        sta  SCREEN+HS_SCORE_POS+HS_ROW_STEP,x
        lda  HISCORE+2*HS_ENTRY_SIZE,x
        sta  SCREEN+HS_SCORE_POS+2*HS_ROW_STEP,x
        lda  HISCORE+3*HS_ENTRY_SIZE,x
        sta  SCREEN+HS_SCORE_POS+3*HS_ROW_STEP,x
        lda  HISCORE+4*HS_ENTRY_SIZE,x
        sta  SCREEN+HS_SCORE_POS+4*HS_ROW_STEP,x
        dex
        bpl  hs_text_loop

        ;---------------------------------------------------------------------
        ; Print "NO." before every entry and the 3 initials after every score
        ;---------------------------------------------------------------------
        ldx  #HS_INITIALS_LEN-1
hs_rank_loop:
        lda  tbl_hs_text0,x
        sta  SCREEN+HS_RANK_POS,x
        sta  SCREEN+HS_RANK_POS+HS_ROW_STEP,x
        sta  SCREEN+HS_RANK_POS+2*HS_ROW_STEP,x
        sta  SCREEN+HS_RANK_POS+3*HS_ROW_STEP,x
        sta  SCREEN+HS_RANK_POS+4*HS_ROW_STEP,x
        lda  HISCORE+HS_SCORE_DIGITS,x
        sta  SCREEN+HS_NAME_POS,x
        lda  HISCORE+HS_ENTRY_SIZE+HS_SCORE_DIGITS,x
        sta  SCREEN+HS_NAME_POS+HS_ROW_STEP,x
        lda  HISCORE+2*HS_ENTRY_SIZE+HS_SCORE_DIGITS,x
        sta  SCREEN+HS_NAME_POS+2*HS_ROW_STEP,x
        lda  HISCORE+3*HS_ENTRY_SIZE+HS_SCORE_DIGITS,x
        sta  SCREEN+HS_NAME_POS+3*HS_ROW_STEP,x
        lda  HISCORE+4*HS_ENTRY_SIZE+HS_SCORE_DIGITS,x
        sta  SCREEN+HS_NAME_POS+4*HS_ROW_STEP,x
        dex
        bpl  hs_rank_loop

        ;---------------------------------------------------------------------
        ; cnt/cnt2 form the little-endian ZP destination pointer for (cnt),Y.
        ; Fill 80-byte bands using tbl_hs_row_cols[5..0], advancing the pointer
        ; with carry into cnt2 so a band may cross a page boundary.
        ;---------------------------------------------------------------------
        lda  #<(COLORRAM+HS_BAND_ROW*SCREEN_COLS)
        sta  cnt
        lda  #>(COLORRAM+HS_BAND_ROW*SCREEN_COLS)
        sta  cnt2
        ldx  #HS_BANDS-1
hs_band_loop:
        ldy  #HS_ROW_STEP-1
        lda  tbl_hs_row_cols,x
fill_high_score_color_band:
        sta  (cnt),y
        dey
        bpl  fill_high_score_color_band
        lda  cnt
        clc
        adc  #HS_ROW_STEP
        sta  cnt
        bcc  hs_band_next
        inc  cnt2
hs_band_next:
        dex
        bpl  hs_band_loop

        ;---------------------------------------------------------------------
        ; Print rank digits 1 to 5
        ;---------------------------------------------------------------------
        ldx  #'1'
        stx  SCREEN+HS_NUMBER_POS
        inx
        stx  SCREEN+HS_NUMBER_POS+HS_ROW_STEP
        inx
        stx  SCREEN+HS_NUMBER_POS+2*HS_ROW_STEP
        inx
        stx  SCREEN+HS_NUMBER_POS+3*HS_ROW_STEP
        inx
        stx  SCREEN+HS_NUMBER_POS+4*HS_ROW_STEP
        rts

;=============================================================================
; get_title_color_for_increment
;=============================================================================
;
; Cycle the logo color
;
; The title screen cycles the color of the whole picture (show_title_sequence, 17 steps).
;
; - The picture's color is read from its first character cell.
; - The caller adds 1 to X and masks it with 7, then writes that as the new color.
; - This routine turns a color of 7 into 0, so 7 becomes 1 after the caller's INX.
; - The cycle is 1, 2, ... 7, 1, ... and never uses black (color 0), which would be
; invisible on the black background.
;
; Returns : X = current color, or 0 if it was 7
;
; Inputs  : first title-picture color RAM cell.
;
;=============================================================================
        .segment "S_44A7"
get_title_color_for_increment:
        ldx  TITLE_PIC_COLOR

        ;---------------------------------------------------------------------
        ; Wrap: yellow (7) becomes 0 so that the caller's INX gives color 1 (black is skipped)
        ;---------------------------------------------------------------------
        cpx  #COL_YELLOW
        bne  color_cycle_done
        ldx  #$00                   ; yes: return 0 instead, so the caller's INX gives 1
color_cycle_done:
        rts

;=============================================================================
; run_attract_intro
;=============================================================================
;
; Run the attract intro.
;
; intro_begin draws the tower screen and plays the demo.
; When it finishes, handle_title_keys_irq is hooked again (so F1 and SPACE work).
; intro_walk_right continues with the hero on the wall.
;
; Changes : intro state/display via intro_begin
;
;=============================================================================
        .segment "S_4695"
run_attract_intro:
        ;---------------------------------------------------------------------
        ; Intro run for the attract mode; then the title keys work again
        ;---------------------------------------------------------------------
        jsr  intro_begin
        sei
        lda  #<handle_title_keys_irq
        sta  CINV
        lda  #>handle_title_keys_irq
        sta  CINV+1
        cli
        jmp  intro_walk_right

;=============================================================================
; handle_title_keys_irq
;=============================================================================
;
; IRQ handler of the title screen: F1 shows the instructions, SPACE starts the game.
;
; Reads the code of the key that is pressed from the KERNAL (ZP_CURKEY):
;   - F1 goes to show_instructions
;   - SPACE to exit_attract_mode_to_control_selection
;   - anything else to the normal KERNAL IRQ routine
;
; Inputs  : ZP_CURKEY
;
; Entry   : KERNAL dispatch through CINV, with its IRQ context on the stack.
;
;=============================================================================
        .segment "S_46AD"
handle_title_keys_irq:
        lda  ZP_CURKEY
        cmp  #KEY_F1
        beq  show_instructions
        cmp  #KEY_SPACE
        beq  exit_attract_mode_to_control_selection
        jmp  KERNAL_IRQ             ; no title key: normal IRQ

;=============================================================================
; exit_attract_mode_to_control_selection
;=============================================================================
;
; Leave the attract mode and go to the control selection.
;
; Switches the sprites off and restores the KERNAL IRQ. The stack pointer is reset, because this
; code is entered from the IRQ handler and never returns to what was running.
;
; Changes : VIC_SPR_EN
;
;=============================================================================
exit_attract_mode_to_control_selection:
        ;---------------------------------------------------------------------
        ; Sprites off, normal IRQ, drop the interrupted context
        ;---------------------------------------------------------------------
        jsr  disable_sprites_and_restore_kernal_irq
        ldx  #STACK_RESET
        txs
        jmp  select_controls

;=============================================================================
; restore_kernal_irq
;=============================================================================
;
; Sets the IRQ vector back to the normal KERNAL interrupt routine.
;
; The game hooks the vector at CINV ($0314/$0315) with its own IRQ handlers (music,
; intro runner, hazards, title keys, scrolling).
; This routine undoes that by writing KERNAL_IRQ ($EA31) back.
;
; Interrupts are disabled while the two bytes are written so that an IRQ cannot see a half-changed vector.
;
; Changes : CINV
; Exit    : RTS with interrupts enabled (CLI)
;
;=============================================================================
restore_kernal_irq:
        ;---------------------------------------------------------------------
        ; Point the IRQ vector at the KERNAL routine, with interrupts disabled during the change
        ;---------------------------------------------------------------------
        sei
        lda  #<KERNAL_IRQ
        sta  CINV
        lda  #>KERNAL_IRQ
        sta  CINV+1
        cli
        rts

;=============================================================================
; show_instructions
;=============================================================================
;
; Shows the instructions page for about 10 seconds.
;
; - The screen is cleared and the routine waits until the key is released.
; - Then six instruction lines (26 characters each) are written
; - Two bell pictures are displayed
; - The line "JOYSTICK OR KEYBOARD CONTROLS HERO" is printed
; - handle_title_keys_irq is hooked again, so SPACE can start the game
; - If Space is not pressed, the routine goes on to wait_before_attract_restart and the attract mode starts again
;
; Entry   : branch from handle_title_keys_irq on F1.
; Changes : SCREEN, COLORRAM, VIC_SPR_EN, CINV
;
;=============================================================================
show_instructions:
        ;---------------------------------------------------------------------
        ; Sprites off, normal IRQ, drop the interrupted context, clear the screen, wait until the key is released
        ;---------------------------------------------------------------------
        jsr  disable_sprites_and_restore_kernal_irq
        ldx  #STACK_RESET
        txs
        jsr  clear_screen
wait_key_release:
        lda  ZP_CURKEY
        cmp  #KEY_NONE
        bne  wait_key_release

        ;---------------------------------------------------------------------
        ; The 6 instruction lines
        ;---------------------------------------------------------------------
        ldx  #INSTR_LEN-1
instr_text_loop:
        lda  txt_instr1,x
        sta  SCREEN+1*SCREEN_COLS+INSTR_COL,x
        lda  txt_instr2,x
        sta  SCREEN+5*SCREEN_COLS+INSTR_COL,x
        lda  txt_instr3,x
        sta  SCREEN+8*SCREEN_COLS+INSTR_COL,x
        lda  txt_instr4,x
        sta  SCREEN+11*SCREEN_COLS+INSTR_COL,x
        lda  txt_instr5,x
        sta  SCREEN+14*SCREEN_COLS+INSTR_COL,x
        lda  txt_instr6,x
        sta  SCREEN+17*SCREEN_COLS+INSTR_COL,x
        dex
        bpl  instr_text_loop

        ;---------------------------------------------------------------------
        ; The two bell pictures (2 x 2 characters, medium grey)
        ;---------------------------------------------------------------------
        ldx  #CELLS_2X2-1
bell_icon_loop:
        lda  tbl_bell_icon,x
        ldy  tbl_2x2_offs,x
        sta  SCREEN+BELL_ICON_1,y
        sta  SCREEN+BELL_ICON_2,y
        lda  #COL_GREY
        sta  COLORRAM+BELL_ICON_1,y
        sta  COLORRAM+BELL_ICON_2,y
        dex
        bpl  bell_icon_loop

        ;---------------------------------------------------------------------
        ; The control text, then hook the title-key IRQ again
        ;---------------------------------------------------------------------
        ldx  #CTRL_PROMPT_LEN-1
ctrl_prompt_loop:
        lda  txt_ctrl_prompt,x
        sta  SCREEN+CTRL_PROMPT_POS,x
        dex
        bpl  ctrl_prompt_loop
        sei
        lda  #<handle_title_keys_irq
        sta  CINV
        lda  #>handle_title_keys_irq
        sta  CINV+1
        cli
		;Fall through to wait_before_attract_restart

;=============================================================================
; wait_before_attract_restart
;=============================================================================
;
; Wait about 10 seconds, then restart the attract mode.
;
;=============================================================================
wait_before_attract_restart:
        lda  #ATTRACT_PASSES
        sta  cnt
attract_delay_outer:
        ldx  #$00
attract_delay_mid:
        ldy  #$00
attract_delay_inner:
        dey
        bne  attract_delay_inner
        dex
        bne  attract_delay_mid
        dec  cnt
        bne  attract_delay_outer
        jmp  restart_attract_mode

;=============================================================================
; disable_sprites_and_restore_kernal_irq
;=============================================================================
;
; Switch all sprites off and restore the KERNAL IRQ.
;
; Changes : VIC_SPR_EN
;
;=============================================================================
        .segment "S_474D"
disable_sprites_and_restore_kernal_irq:
        lda  #$00
        sta  VIC_SPR_EN
        jmp  restore_kernal_irq

;=============================================================================
; flash_title_lettering
;=============================================================================
;
; Flash the title lettering of the intro for about 5 seconds.
;
; Each step samples the first letter cell, toggles color bit 2, then applies
; that one result to all 36 cells (two rows of 18). Individual cell colors
; are not toggled independently. The initialized light-blue color alternates
; with light red for 64 steps.
; Then the routine continues to wait_before_attract_restart.
;
;=============================================================================
        .segment "S_4755"
flash_title_lettering:
        lda  #LETTER_FLASH_STEPS
        sta  cnt

        ;---------------------------------------------------------------------
        ; Toggle the color of the lettering
        ;---------------------------------------------------------------------
letter_flash_step:
        lda  COLORRAM+TITLE_LETTERS
        eor  #LETTER_FLASH_BIT
        ldx  #TITLE_LETTERS_LEN-1

        ;---------------------------------------------------------------------
        ; Apply the sampled color uniformly to both rows
        ;---------------------------------------------------------------------
letter_flash_cells:
        sta  COLORRAM+TITLE_LETTERS,x
        sta  COLORRAM+TITLE_LETTERS+SCREEN_COLS,x
        dex
        bpl  letter_flash_cells

        ;---------------------------------------------------------------------
        ; Delay a little bit
        ;---------------------------------------------------------------------
        ldx  #LETTER_FLASH_DELAY
letter_flash_delay_mid:
        ldy  #$00
letter_flash_delay_inner:
        dey
        bne  letter_flash_delay_inner
        dex
        bne  letter_flash_delay_mid
        dec  cnt
        bne  letter_flash_step
        jmp  wait_before_attract_restart

;=============================================================================
; restart_attract_mode
;=============================================================================
;
; Switch the sprites off and return to the title screen.
;
; The end of the attract loop.
;
;=============================================================================
        .segment "S_477A"
restart_attract_mode:
        lda  #$00
        sta  VIC_SPR_EN
        jmp  show_title_sequence

;=============================================================================
; select_controls
;=============================================================================
;
; Asks for the control method (joystick or keyboard) and shows the matching help.
;
; - The screen is cleared and "SELECT KEYBOARD OR JOYSTICK" is shown on four rows.
; - GETIN is polled until J or K is pressed.
; - control_mode becomes 0 for J (joystick) and 1 for K (keyboard).
; - For the joystick, the line "PLACE JOYSTICK IN PORT 2" is shown
; - For the keyboard, "KEYBOARD CONTROLS" and the three key help lines for
;   jump, move left and move right are printed.
; - Continues at start_new_game.
;
; Inputs  : KERNAL GETIN key buffer.
; Changes : SCREEN, COLORRAM, control_mode
;
;=============================================================================
        .segment "S_4782"
select_controls:
        ;---------------------------------------------------------------------
        ; Clear the screen: spaces, color white
        ;---------------------------------------------------------------------
        ldx  #$00
select_clear_loop:
        lda  #CHAR_SPACE
        sta  SCREEN,x
        sta  SCREEN+PAGE,x
        sta  SCREEN+2*PAGE,x
        sta  SCREEN+COPY_TAIL,x
        lda  #COL_WHITE
        sta  COLORRAM,x
        sta  COLORRAM+PAGE,x
        sta  COLORRAM+2*PAGE,x
        sta  COLORRAM+COPY_TAIL,x
        inx
        bne  select_clear_loop

        ;---------------------------------------------------------------------
        ; "SELECT KEYBOARD OR JOYSTICK"
        ;---------------------------------------------------------------------
        ldx  #SELECT_LEN-1
select_text_loop:
        lda  txt_select,x
        sta  SCREEN+3*SCREEN_COLS+SELECT_COL,x
        lda  txt_keyboard,x
        sta  SCREEN+6*SCREEN_COLS+SELECT_COL,x
        lda  txt_or,x
        sta  SCREEN+8*SCREEN_COLS+SELECT_COL,x
        lda  txt_joystick,x
        sta  SCREEN+10*SCREEN_COLS+SELECT_COL,x
        dex
        bpl  select_text_loop

wait_choice:
        ;---------------------------------------------------------------------
        ; Wait for J (joystick) or K (keyboard)
        ;---------------------------------------------------------------------
        jsr  GETIN
        cmp  #KEY_J
        beq  store_control_choice
        cmp  #KEY_K
        bne  wait_choice
store_control_choice:
        ;---------------------------------------------------------------------
        ; Remember the choice: 0 = joystick, 1 = keyboard
        ;---------------------------------------------------------------------
        sec
        sbc  #KEY_J
        sta  control_mode         ; 0 = joystick, 1 = keyboard
        cmp  #CONTROL_KEYBOARD
        beq  show_keyboard_help          ; keyboard: show the key help

        ;---------------------------------------------------------------------
        ; Joystick: its text, then the game starts
        ;---------------------------------------------------------------------
        ldx  #PLACE_JOY_LEN-1
joystick_text_loop:
        lda  txt_place_joystick,x
        sta  SCREEN+PLACE_JOY_POS,x
        dex
        bpl  joystick_text_loop
        jmp  start_new_game

show_keyboard_help:
        ;---------------------------------------------------------------------
        ; Keyboard: the key help, then the game starts
        ;---------------------------------------------------------------------
        ldx  #KBD_HELP_LEN-1
keyboard_text_loop:
        lda  txt_kbd_title,x
        sta  SCREEN+15*SCREEN_COLS+KBD_HELP_COL,x
        lda  txt_kbd_jump,x
        sta  SCREEN+18*SCREEN_COLS+KBD_HELP_COL,x
        lda  txt_kbd_left,x
        sta  SCREEN+20*SCREEN_COLS+KBD_HELP_COL,x
        lda  txt_kbd_right,x
        sta  SCREEN+22*SCREEN_COLS+KBD_HELP_COL,x
        dex
        bpl  keyboard_text_loop
        ; Fall through to start_new_game

;=============================================================================
; start_new_game
;=============================================================================
;
; Start a new game: wait, run the intro demo, reset the game variables.
;
; After a pause of about 7 seconds, the SID volume is set to 15 and play_intro runs the intro cinematic.
; Then screen 0 is selected, game state vars are reset/initialized and the sprites
; are switched off.
;
; lives is set by set_lives_start, which is where the routine ends.
;
; Changes : intro state, screen, jump, player_x/player_x_hi,
;           $0342-$0350, VIC_SPR_EN, A, X, Y (including callees).
;
;=============================================================================
start_new_game:
        ;---------------------------------------------------------------------
        ; Pause of about 7 s, then the SID volume to maximum
        ;---------------------------------------------------------------------
        lda  #START_PAUSE
        sta  cnt
start_pause_outer:
        ldx  #$00
start_pause_mid:
        ldy  #$00
start_pause_inner:
        dey
        bne  start_pause_inner
        dex
        bne  start_pause_mid
        dec  cnt
        bne  start_pause_outer
        lda  #SID_VOLUME_MAX
        sta  SID_MODE_VOL

        ;---------------------------------------------------------------------
        ; Intro cinematic
        ;---------------------------------------------------------------------
        jsr  play_intro             

        ;---------------------------------------------------------------------
        ; New game: screen 0, no jump, hero at the left edge, score and bells cleared
        ;---------------------------------------------------------------------
        lda  #$00
        sta  screen
        sta  jump
        sta  player_x_hi
        ; Bulk-zero $0345-$0350: includes unnamed $0345/$0347, facing,
        ; bells, seven score digits and extra_life_given; excludes lives.
        ldx  #GAME_VARS-1
clear_game_state_loop:
        sta  clear_block,x
        dex
        bpl  clear_game_state_loop
        lda  #HERO_START_X
        sta  player_x

        ; Unused vars
        sta  unused_0344
        lda  #$01
        sta  unused_0342
        lda  #$80
        sta  unused_0343

        ;---------------------------------------------------------------------
        ; No sprites for now; set the lives and start the first screen
        ;---------------------------------------------------------------------
        lda  #$00
        sta  VIC_SPR_EN             ; all sprites off
        jmp  set_lives_start


;=====================================================================
; PSEUDO-CODE
;=====================================================================
; ---- initialize_game
;     lock_charset_switch()
;     init_video(BANK=1, SCREEN=screen_base, CHARSET=charset_base, MODE=multicolor_text)
;     set_border_color(BLACK)
;     set_background_color(BLACK)
;     set_multicolor_1(DARK_GREY)
;     set_multicolor_2(WHITE)
;     set_sprite_multicolors(WHITE)
;     hiscore_table[0..49] = default_hiscore_table[0..49]
;     goto show_title_sequence
;
;
; ---- show_title_sequence
;     sound_off()
;     clear_screen()
;     set_key_handler(handle_title_keys_irq)     // F1 and SPACE now active
;     draw_picture(title_picture, row=5, col=5)
;     write "OCEAN SOFTWARE" at row 1, col 13  // green
;     write "PRESENTS"       at row 3, col 13
;     write "BY J.STEELE"    at row 21, col 25 // green
;     repeat 17 times                          // color-cycle the picture, skipping black
;         color = (get_title_color_for_increment() + 1) & COLOR_MASK  // 1..7, skipping black
;         set_picture_color(color)
;         wait(~0.33 s)
;     repeat 16 times                          // hold the picture
;         wait(~0.33 s)
;     clear_screen()
;     draw_high_scores()
;     write "BONUS MAN AT 10000" at row 16, col 11  // red
;     goto run_attract_intro
;
;
; ---- clear_screen
;     fill screen with SPACE
;     fill color_map with WHITE
;     write "PRESS F1 FOR INSTRUCTIONS" at row 23, col 7
;     write "OR SPACE TO START"         at row 24, col 7
;
;
; ---- draw_high_scores
;     write "HISCORE"  at row 0,  col 16
;     write best_score at row 1,  col 16
;     write "LEAGUE"   at row 3,  col 9
;     write "ORDER"    at row 4,  col 9
;     write "SCORE"    at row 3,  col 17
;     write "NAME."    at row 3,  col 26
;     for each of the 5 entries e (0..4):
;         write entry[e].score    at row (5 + e*2), col 17
;         write "NO."             at row (5 + e*2), col 10
;         write (e + 1)           at row (5 + e*2), col 13  // rank digit
;         write entry[e].initials at row (5 + e*2), col 27
;     // color bands: two-row stripes from row 3 downward
;     for each band b (0..5):
;         paint rows (3 + b*2) and (3 + b*2 + 1) with tbl_hs_row_cols[5-b]
;
;
; ---- get_title_color_for_increment -> color
;     color = current picture color
;     if color == YELLOW (7)
;         color = 0          // so caller's +1 gives 1, skipping black
;     return color
;
;
; ---- run_attract_intro
;     play_intro_cinematic()
;     set_key_handler(handle_title_keys_irq) // re-arm F1 / SPACE
;     goto intro_walk_right
;
;
; ---- handle_title_keys_irq
;     key = current_key()
;     if key == F1
;         goto show_instructions
;     if key == SPACE
;         goto exit_attract_mode_to_control_selection
;     run_normal_system_tick()
;
;
; ---- exit_attract_mode_to_control_selection
;     hide_all_sprites()
;     restore_system_key_handler()
;     discard_interrupted_context()   // stack reset: abandon whatever was running
;     goto select_controls
;
;
; ---- restore_system_key_handler
;     set_key_handler(system_default)
;
;
; ---- show_instructions
;     hide_all_sprites()
;     restore_system_key_handler()
;     discard_interrupted_context()
;     clear_screen()
;     wait until key released
;     write instruction line 1 at row 1,  col 7
;     write instruction line 2 at row 5,  col 7
;     write instruction line 3 at row 8,  col 7
;     write instruction line 4 at row 11, col 7
;     write instruction line 5 at row 14, col 7
;     write instruction line 6 at row 17, col 7
;     draw bell icon at row 10, col 20  // 2x2 characters, grey
;     draw bell icon at row 16, col 12  // 2x2 characters, grey
;     write "JOYSTICK OR KEYBOARD CONTROLS HERO" at row 4, col 3
;     set_key_handler(handle_title_keys_irq)   // SPACE can still start the game
;     // falls through into wait_before_attract_restart
;
;
; ---- wait_before_attract_restart
; wait_before_attract_restart()   // also entered from flash_title_lettering
;     wait(~10 s)
;     goto restart_attract_mode
;
;
; ---- hide_all_sprites
;     hide_sprites()
;     goto restore_system_key_handler
;
;
; ---- flash_title_lettering
;     repeat 64 times
;         color = first_letter_color XOR LETTER_FLASH_BIT
;         set all 36 letter cells to color (rows 9-10, 18 cols)
;         wait(~83 ms)
;     goto wait_before_attract_restart
;
;
; ---- restart_attract_mode
;     hide_sprites()
;     goto show_title_sequence
;
;
; ---- select_controls
;     clear_screen()
;     write "SELECT"    at row 3,  col 16
;     write "KEYBOARD"  at row 6,  col 16
;     write "OR"        at row 8,  col 16
;     write "JOYSTICK"  at row 10, col 16
;     wait for J or K keypress
;     control_mode = 0 if J (joystick), 1 if K (keyboard)
;     if keyboard:
;         write "KEYBOARD CONTROLS"  at row 15, col 11
;         write jump key hint        at row 18, col 11
;         write move-left key hint   at row 20, col 11
;         write move-right key hint  at row 22, col 11
;         // falls through into start_new_game
;     else:
;         write "PLACE JOYSTICK IN PORT 2" at row 15, col 8
;         goto start_new_game
;
;
; ---- start_new_game
;     wait(~7 s)
;     set_volume(MAX)
;     play_intro_cinematic()          // returns when hero has climbed the wall
;     screen    = 0                   // first screen
;     jump      = 0
;     player_x  = HERO_START_X
;     player_x_hi = 0
;     clear bytes $0345..$0350        // facing, bells, score, extra-life flag, two unnamed bytes
;     unused_0344 = HERO_START_X      // original writes retained; no explicit reads found
;     unused_0342 = 1
;     unused_0343 = $80
;     hide_sprites()
;     goto set_lives_start
