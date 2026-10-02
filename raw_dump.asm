
.C:3c00  A2 00     LDX #$00
.C:3c02  BD 44 63  LDA $6344,X
.C:3c05  CD 40 03  CMP $0340
.C:3c08  B0 04     BCS $3C0E
.C:3c0a  E8        INX
.C:3c0b  4C 02 3C  JMP $3C02
.C:3c0e  A9 10     LDA #$10
.C:3c10  8D 12 D4  STA $D412
.C:3c13  A9 00     LDA #$00
.C:3c15  8D 0E D4  STA $D40E
.C:3c18  8D 14 D4  STA $D414
.C:3c1b  A9 0A     LDA #$0A
.C:3c1d  8D 13 D4  STA $D413
.C:3c20  BD 1F 3F  LDA $3F1F,X
.C:3c23  8D 0F D4  STA $D40F
.C:3c26  A9 11     LDA #$11
.C:3c28  8D 12 D4  STA $D412
.C:3c2b  60        RTS
.C:3c2c  A9 08     LDA #$08
.C:3c2e  8D 04 D4  STA $D404
.C:3c31  8D 0B D4  STA $D40B
.C:3c34  8D 12 D4  STA $D412
.C:3c37  A2 06     LDX #$06
.C:3c39  BD C0 7C  LDA $7CC0,X
.C:3c3c  9D 00 D4  STA $D400,X
.C:3c3f  CA        DEX
.C:3c40  10 F7     BPL $3C39
.C:3c42  A2 11     LDX #$11
.C:3c44  BD C8 7C  LDA $7CC8,X
.C:3c47  8D 00 D4  STA $D400
.C:3c4a  8A        TXA
.C:3c4b  A2 1E     LDX #$1E
.C:3c4d  A0 00     LDY #$00
.C:3c4f  88        DEY
.C:3c50  D0 FD     BNE $3C4F
.C:3c52  CA        DEX
.C:3c53  D0 F8     BNE $3C4D
.C:3c55  AA        TAX
.C:3c56  CA        DEX
.C:3c57  10 EB     BPL $3C44
.C:3c59  A9 08     LDA #$08
.C:3c5b  8D 04 D4  STA $D404
.C:3c5e  60        RTS
.C:3c5f  78        SEI
.C:3c60  A9 01     LDA #$01
.C:3c62  8D C0 03  STA $03C0
.C:3c65  A9 73     LDA #$73
.C:3c67  8D 14 03  STA $0314
.C:3c6a  A9 3C     LDA #$3C
.C:3c6c  8D 15 03  STA $0315
.C:3c6f  58        CLI
.C:3c70  4C 8B 3C  JMP $3C8B
.C:3c73  CE C0 03  DEC $03C0
.C:3c76  F0 03     BEQ $3C7B
.C:3c78  4C 31 EA  JMP $EA31
.C:3c7b  AD 22 D0  LDA $D022
.C:3c7e  49 07     EOR #$07
.C:3c80  8D 22 D0  STA $D022
.C:3c83  A9 01     LDA #$01
.C:3c85  8D C0 03  STA $03C0
.C:3c88  4C 31 EA  JMP $EA31
.C:3c8b  A9 F1     LDA #$F1
.C:3c8d  8D 17 D4  STA $D417
.C:3c90  A9 1F     LDA #$1F
.C:3c92  8D 18 D4  STA $D418
.C:3c95  A9 00     LDA #$00
.C:3c97  8D 15 D4  STA $D415
.C:3c9a  A2 06     LDX #$06
.C:3c9c  BD E0 7C  LDA $7CE0,X
.C:3c9f  9D 00 D4  STA $D400,X
.C:3ca2  CA        DEX
.C:3ca3  10 F7     BPL $3C9C
.C:3ca5  A2 28     LDX #$28
.C:3ca7  8E 01 D4  STX $D401
.C:3caa  8E 16 D4  STX $D416
.C:3cad  8A        TXA
.C:3cae  A2 08     LDX #$08
.C:3cb0  A0 00     LDY #$00
.C:3cb2  88        DEY
.C:3cb3  D0 FD     BNE $3CB2
.C:3cb5  CA        DEX
.C:3cb6  D0 F8     BNE $3CB0
.C:3cb8  18        CLC
.C:3cb9  69 0A     ADC #$0A
.C:3cbb  AA        TAX
.C:3cbc  E0 C8     CPX #$C8
.C:3cbe  D0 E7     BNE $3CA7
.C:3cc0  A9 08     LDA #$08
.C:3cc2  8D 04 D4  STA $D404
.C:3cc5  A9 0F     LDA #$0F
.C:3cc7  8D 18 D4  STA $D418
.C:3cca  A9 00     LDA #$00
.C:3ccc  8D 17 D4  STA $D417
.C:3ccf  78        SEI
.C:3cd0  A9 31     LDA #$31
.C:3cd2  8D 14 03  STA $0314
.C:3cd5  A9 EA     LDA #$EA
.C:3cd7  8D 15 03  STA $0315
.C:3cda  58        CLI
.C:3cdb  A9 0B     LDA #$0B
.C:3cdd  8D 22 D0  STA $D022
.C:3ce0  60        RTS
.C:3ce1  A9 08     LDA #$08
.C:3ce3  8D 04 D4  STA $D404
.C:3ce6  8D 0B D4  STA $D40B
.C:3ce9  8D 12 D4  STA $D412
.C:3cec  4C 8D 45  JMP $458D
.C:3cef  CE D0 03  DEC $03D0
.C:3cf2  F0 03     BEQ $3CF7
.C:3cf4  4C 31 EA  JMP $EA31
.C:3cf7  AE D1 03  LDX $03D1
.C:3cfa  20 42 3D  JSR $3D42
.C:3cfd  8D D0 03  STA $03D0
.C:3d00  A9 20     LDA #$20
.C:3d02  8D 04 D4  STA $D404
.C:3d05  BD 00 7F  LDA $7F00,X
.C:3d08  8D 01 D4  STA $D401
.C:3d0b  BD 40 7F  LDA $7F40,X
.C:3d0e  8D 00 D4  STA $D400
.C:3d11  A9 00     LDA #$00
.C:3d13  8D 06 D4  STA $D406
.C:3d16  A9 09     LDA #$09
.C:3d18  8D 05 D4  STA $D405
.C:3d1b  E8        INX
.C:3d1c  8A        TXA
.C:3d1d  29 3F     AND #$3F
.C:3d1f  8D D1 03  STA $03D1
.C:3d22  A9 21     LDA #$21
.C:3d24  8D 04 D4  STA $D404
.C:3d27  4C F4 3C  JMP $3CF4
.C:3d2a  A9 08     LDA #$08
.C:3d2c  8D 04 D4  STA $D404
.C:3d2f  8D 0B D4  STA $D40B
.C:3d32  8D 12 D4  STA $D412
.C:3d35  A9 01     LDA #$01
.C:3d37  8D D0 03  STA $03D0
.C:3d3a  A9 00     LDA #$00
.C:3d3c  8D D1 03  STA $03D1
.C:3d3f  4C 39 40  JMP $4039
.C:3d42  BD 80 7F  LDA $7F80,X
.C:3d45  18        CLC
.C:3d46  69 03     ADC #$03
.C:3d48  60        RTS
.C:3d49  AA        TAX
.C:3d4a  AA        TAX
.C:3d4b  AA        TAX
.C:3d4c  AA        TAX
.C:3d4d  AA        TAX
.C:3d4e  AA        TAX
.C:3d4f  AA        TAX
.C:3d50  AA        TAX
.C:3d51  AA        TAX
.C:3d52  AA        TAX
.C:3d53  AA        TAX
.C:3d54  AA        TAX
.C:3d55  AA        TAX
.C:3d56  AA        TAX
.C:3d57  AA        TAX
.C:3d58  AA        TAX
.C:3d59  AA        TAX
.C:3d5a  AA        TAX
.C:3d5b  AA        TAX
.C:3d5c  AA        TAX
.C:3d5d  AA        TAX
.C:3d5e  AA        TAX
.C:3d5f  AA        TAX
.C:3d60  AA        TAX
.C:3d61  AA        TAX
.C:3d62  AA        TAX
.C:3d63  AA        TAX
.C:3d64  AA        TAX
.C:3d65  AA        TAX
.C:3d66  AA        TAX
.C:3d67  AA        TAX
.C:3d68  AA        TAX
.C:3d69  AA        TAX
.C:3d6a  AA        TAX
.C:3d6b  AA        TAX
.C:3d6c  AA        TAX
.C:3d6d  AA        TAX
.C:3d6e  AA        TAX
.C:3d6f  AA        TAX
.C:3d70  AA        TAX
.C:3d71  AA        TAX
.C:3d72  AA        TAX
.C:3d73  AA        TAX
.C:3d74  AA        TAX
.C:3d75  AA        TAX
.C:3d76  AA        TAX
.C:3d77  AA        TAX
.C:3d78  AA        TAX
.C:3d79  AA        TAX
.C:3d7a  AA        TAX
.C:3d7b  AA        TAX
.C:3d7c  AA        TAX
.C:3d7d  AA        TAX
.C:3d7e  AA        TAX
.C:3d7f  AA        TAX
.C:3d80  AA        TAX
.C:3d81  AA        TAX
.C:3d82  AA        TAX
.C:3d83  AA        TAX
.C:3d84  AA        TAX
.C:3d85  AA        TAX
.C:3d86  AA        TAX
.C:3d87  AA        TAX
.C:3d88  AA        TAX
.C:3d89  AA        TAX
.C:3d8a  AA        TAX
.C:3d8b  AA        TAX
.C:3d8c  AA        TAX
.C:3d8d  AA        TAX
.C:3d8e  AA        TAX
.C:3d8f  AA        TAX
.C:3d90  AA        TAX
.C:3d91  AA        TAX
.C:3d92  AA        TAX
.C:3d93  AA        TAX
.C:3d94  AA        TAX
.C:3d95  AA        TAX
.C:3d96  AA        TAX
.C:3d97  AA        TAX
.C:3d98  AA        TAX
.C:3d99  AA        TAX
.C:3d9a  AA        TAX
.C:3d9b  AA        TAX
.C:3d9c  AA        TAX
.C:3d9d  AA        TAX
.C:3d9e  AA        TAX
.C:3d9f  AA        TAX
.C:3da0  AA        TAX
.C:3da1  AA        TAX
.C:3da2  AA        TAX
.C:3da3  AA        TAX
.C:3da4  AA        TAX
.C:3da5  AA        TAX
.C:3da6  AA        TAX
.C:3da7  AA        TAX
.C:3da8  AA        TAX
.C:3da9  AA        TAX
.C:3daa  AA        TAX
.C:3dab  AA        TAX
.C:3dac  AA        TAX
.C:3dad  AA        TAX
.C:3dae  AA        TAX
.C:3daf  AA        TAX
.C:3db0  AA        TAX
.C:3db1  AA        TAX
.C:3db2  AA        TAX
.C:3db3  AA        TAX
.C:3db4  AA        TAX
.C:3db5  AA        TAX
.C:3db6  AA        TAX
.C:3db7  AA        TAX
.C:3db8  AA        TAX
.C:3db9  AA        TAX
.C:3dba  AA        TAX
.C:3dbb  AA        TAX
.C:3dbc  AA        TAX
.C:3dbd  AA        TAX
.C:3dbe  AA        TAX
.C:3dbf  AA        TAX
.C:3dc0  AA        TAX
.C:3dc1  AA        TAX
.C:3dc2  AA        TAX
.C:3dc3  AA        TAX
.C:3dc4  AA        TAX
.C:3dc5  AA        TAX
.C:3dc6  AA        TAX
.C:3dc7  AA        TAX
.C:3dc8  AA        TAX
.C:3dc9  AA        TAX
.C:3dca  AA        TAX
.C:3dcb  AA        TAX
.C:3dcc  AA        TAX
.C:3dcd  AA        TAX
.C:3dce  AA        TAX
.C:3dcf  AA        TAX
.C:3dd0  AA        TAX
.C:3dd1  AA        TAX
.C:3dd2  AA        TAX
.C:3dd3  AA        TAX
.C:3dd4  AA        TAX
.C:3dd5  AA        TAX
.C:3dd6  AA        TAX
.C:3dd7  AA        TAX
.C:3dd8  AA        TAX
.C:3dd9  AA        TAX
.C:3dda  AA        TAX
.C:3ddb  AA        TAX
.C:3ddc  AA        TAX
.C:3ddd  AA        TAX
.C:3dde  AA        TAX
.C:3ddf  AA        TAX
.C:3de0  AA        TAX
.C:3de1  AA        TAX
.C:3de2  AA        TAX
.C:3de3  AA        TAX
.C:3de4  AA        TAX
.C:3de5  AA        TAX
.C:3de6  AA        TAX
.C:3de7  AA        TAX
.C:3de8  AA        TAX
.C:3de9  AA        TAX
.C:3dea  AA        TAX
.C:3deb  AA        TAX
.C:3dec  AA        TAX
.C:3ded  AA        TAX
.C:3dee  AA        TAX
.C:3def  AA        TAX
.C:3df0  AA        TAX
.C:3df1  AA        TAX
.C:3df2  AA        TAX
.C:3df3  AA        TAX
.C:3df4  AA        TAX
.C:3df5  AA        TAX
.C:3df6  AA        TAX
.C:3df7  AA        TAX
.C:3df8  AA        TAX
.C:3df9  AA        TAX
.C:3dfa  AA        TAX
.C:3dfb  AA        TAX
.C:3dfc  AA        TAX
.C:3dfd  AA        TAX
.C:3dfe  AA        TAX
.C:3dff  AA        TAX
.C:3e00  A2 0C     LDX #$0C
.C:3e02  8A        TXA
.C:3e03  A2 00     LDX #$00
.C:3e05  A0 00     LDY #$00
.C:3e07  88        DEY
.C:3e08  D0 FD     BNE $3E07
.C:3e0a  CA        DEX
.C:3e0b  D0 F8     BNE $3E05
.C:3e0d  AA        TAX
.C:3e0e  CA        DEX
.C:3e0f  D0 F1     BNE $3E02
.C:3e11  A9 00     LDA #$00
.C:3e13  8D 15 D0  STA $D015
.C:3e16  60        RTS
.C:3e17  9D B8 8A  STA $8AB8,X
.C:3e1a  9D 00 8B  STA $8B00,X
.C:3e1d  60        RTS
.C:3e1e  A2 C8     LDX #$C8
.C:3e20  BD 37 3F  LDA $3F37,X
.C:3e23  9D 1F 87  STA $871F,X
.C:3e26  CA        DEX
.C:3e27  D0 F7     BNE $3E20
.C:3e29  60        RTS
.C:3e2a  A9 80     LDA #$80
.C:3e2c  8D 04 D4  STA $D404
.C:3e2f  A9 2C     LDA #$2C
.C:3e31  8D 01 D4  STA $D401
.C:3e34  A9 64     LDA #$64
.C:3e36  8D 00 D4  STA $D400
.C:3e39  A9 80     LDA #$80
.C:3e3b  8D 05 D4  STA $D405
.C:3e3e  A9 00     LDA #$00
.C:3e40  8D 06 D4  STA $D406
.C:3e43  A9 81     LDA #$81
.C:3e45  8D 04 D4  STA $D404
.C:3e48  60        RTS
.C:3e49  A9 80     LDA #$80
.C:3e4b  8D 04 D4  STA $D404
.C:3e4e  A9 0F     LDA #$0F
.C:3e50  8D 01 D4  STA $D401
.C:3e53  A9 64     LDA #$64
.C:3e55  8D 00 D4  STA $D400
.C:3e58  A9 B0     LDA #$B0
.C:3e5a  8D 05 D4  STA $D405
.C:3e5d  A9 00     LDA #$00
.C:3e5f  8D 06 D4  STA $D406
.C:3e62  A9 81     LDA #$81
.C:3e64  8D 04 D4  STA $D404
.C:3e67  60        RTS
.C:3e68  20 2A 3E  JSR $3E2A
.C:3e6b  4C 34 4F  JMP $4F34
.C:3e6e  A9 00     LDA #$00
.C:3e70  8D 18 D4  STA $D418
.C:3e73  4C 39 40  JMP $4039
.C:3e76  CE 48 03  DEC $0348
.C:3e79  A9 10     LDA #$10
.C:3e7b  8D 12 D4  STA $D412
.C:3e7e  A9 64     LDA #$64
.C:3e80  8D 0E D4  STA $D40E
.C:3e83  A9 7A     LDA #$7A
.C:3e85  8D 0F D4  STA $D40F
.C:3e88  A9 0A     LDA #$0A
.C:3e8a  8D 13 D4  STA $D413
.C:3e8d  A9 00     LDA #$00
.C:3e8f  8D 14 D4  STA $D414
.C:3e92  A9 11     LDA #$11
.C:3e94  8D 12 D4  STA $D412
.C:3e97  60        RTS
.C:3e98  EE 48 03  INC $0348
.C:3e9b  A9 08     LDA #$08
.C:3e9d  8D 04 D4  STA $D404
.C:3ea0  8D 0B D4  STA $D40B
.C:3ea3  8D 12 D4  STA $D412
.C:3ea6  60        RTS
.C:3ea7  A2 06     LDX #$06
.C:3ea9  BD 2A 3F  LDA $3F2A,X
.C:3eac  9D 0E D4  STA $D40E,X
.C:3eaf  CA        DEX
.C:3eb0  10 F7     BPL $3EA9
.C:3eb2  A9 11     LDA #$11
.C:3eb4  8D 12 D4  STA $D412
.C:3eb7  A2 01     LDX #$01
.C:3eb9  8A        TXA
.C:3eba  A2 C0     LDX #$C0
.C:3ebc  A0 00     LDY #$00
.C:3ebe  88        DEY
.C:3ebf  D0 FD     BNE $3EBE
.C:3ec1  CA        DEX
.C:3ec2  D0 F8     BNE $3EBC
.C:3ec4  AA        TAX
.C:3ec5  CA        DEX
.C:3ec6  D0 F1     BNE $3EB9
.C:3ec8  A2 06     LDX #$06
.C:3eca  BD 31 3F  LDA $3F31,X
.C:3ecd  9D 0E D4  STA $D40E,X
.C:3ed0  CA        DEX
.C:3ed1  10 F7     BPL $3ECA
.C:3ed3  A9 11     LDA #$11
.C:3ed5  8D 12 D4  STA $D412
.C:3ed8  AD 15 D0  LDA $D015
.C:3edb  20 DC 54  JSR $54DC
.C:3ede  A9 08     LDA #$08
.C:3ee0  8D 04 D4  STA $D404
.C:3ee3  8D 0B D4  STA $D40B
.C:3ee6  8D 12 D4  STA $D412
.C:3ee9  60        RTS
.C:3eea  8D 15 03  STA $0315
.C:3eed  4C 09 3F  JMP $3F09
.C:3ef0  8E 3F 03  STX $033F
.C:3ef3  A2 06     LDX #$06
.C:3ef5  BD 23 3F  LDA $3F23,X
.C:3ef8  9D 00 D4  STA $D400,X
.C:3efb  CA        DEX
.C:3efc  10 F7     BPL $3EF5
.C:3efe  A9 41     LDA #$41
.C:3f00  8D 04 D4  STA $D404
.C:3f03  A9 40     LDA #$40
.C:3f05  8D 04 D4  STA $D404
.C:3f08  60        RTS
.C:3f09  AE 3D 03  LDX $033D
.C:3f0c  BD E1 6F  LDA $6FE1,X
.C:3f0f  29 FE     AND #$FE
.C:3f11  F0 F5     BEQ $3F08
.C:3f13  4C 2A 3E  JMP $3E2A
.C:3f16  AA        TAX
.C:3f17  AA        TAX
.C:3f18  AA        TAX
.C:3f19  AA        TAX
.C:3f1a  AA        TAX
.C:3f1b  AA        TAX
.C:3f1c  AA        TAX
.C:3f1d  AA        TAX
.C:3f1e  AA        TAX
.C:3f1f  14         $14
.C:3f20  1E 28 32  ASL $3228,X
.C:3f23  00        BRK
.C:3f24  04         $04
.C:3f25  28        PLP
.C:3f26  00        BRK
.C:3f27  40        RTI
.C:3f28  00        BRK
.C:3f29  09 64     ORA #$64
.C:3f2b  48        PHA
.C:3f2c  00        BRK
.C:3f2d  00        BRK
.C:3f2e  10 0A     BPL $3F3A
.C:3f30  00        BRK
.C:3f31  64         $64
.C:3f32  12         $12
.C:3f33  00        BRK
.C:3f34  00        BRK
.C:3f35  10 0A     BPL $3F41
.C:3f37  00        BRK
.C:3f38  3E AB AC  ROL $ACAB,X
.C:3f3b  3E 3E 3E  ROL $3E3E,X
.C:3f3e  3E 3E 3E  ROL $3E3E,X
.C:3f41  3E 3E 3E  ROL $3E3E,X
.C:3f44  3E 3E 3E  ROL $3E3E,X
.C:3f47  3E 3E 3E  ROL $3E3E,X
.C:3f4a  3E 3E 3E  ROL $3E3E,X
.C:3f4d  3E 3E 3E  ROL $3E3E,X
.C:3f50  3E 3E 3E  ROL $3E3E,X
.C:3f53  3E 3E 3E  ROL $3E3E,X
.C:3f56  3E 3E 3E  ROL $3E3E,X
.C:3f59  C8        INY
.C:3f5a  3E 3E 3E  ROL $3E3E,X
.C:3f5d  3E 3E 3E  ROL $3E3E,X
.C:3f60  AA        TAX
.C:3f61  65 65     ADC $65
.C:3f63  AD AE AF  LDA $AFAE
.C:3f66  3E 3E 3E  ROL $3E3E,X
.C:3f69  3E 3E 3E  ROL $3E3E,X
.C:3f6c  3E 3E 3E  ROL $3E3E,X
.C:3f6f  3E 3E 3E  ROL $3E3E,X
.C:3f72  3E 3E 3E  ROL $3E3E,X
.C:3f75  3E 3E 3E  ROL $3E3E,X
.C:3f78  3E 3E 3E  ROL $3E3E,X
.C:3f7b  3E 3E 3E  ROL $3E3E,X
.C:3f7e  3E 3E C7  ROL $C73E,X
.C:3f81  65 C9     ADC $C9
.C:3f83  CA        DEX
.C:3f84  C8        INY
.C:3f85  C8        INY
.C:3f86  CB         $CB
.C:3f87  CC 65 65  CPY $6565
.C:3f8a  65 65     ADC $65
.C:3f8c  65 65     ADC $65
.C:3f8e  B0 B1     BCS $3F41
.C:3f90  B2         $B2
.C:3f91  B3         $B3
.C:3f92  B4 3E     LDY $3E,X
.C:3f94  3E 3E 3E  ROL $3E3E,X
.C:3f97  3E 3E 3E  ROL $3E3E,X
.C:3f9a  B9 BA BB  LDA $BBBA,Y
.C:3f9d  BC BD 3E  LDY $3EBD,X
.C:3fa0  3E 3E 3E  ROL $3E3E,X
.C:3fa3  3E 3E C4  ROL $C43E,X
.C:3fa6  C5 C6     CMP $C6
.C:3fa8  65 65     ADC $65
.C:3faa  65 65     ADC $65
.C:3fac  65 65     ADC $65
.C:3fae  65 65     ADC $65
.C:3fb0  65 65     ADC $65
.C:3fb2  65 65     ADC $65
.C:3fb4  65 65     ADC $65
.C:3fb6  65 65     ADC $65
.C:3fb8  65 65     ADC $65
.C:3fba  65 B5     ADC $B5
.C:3fbc  B6 B7     LDX $B7,Y
.C:3fbe  B8        CLV
.C:3fbf  B5 B6     LDA $B6,X
.C:3fc1  B8        CLV
.C:3fc2  65 65     ADC $65
.C:3fc4  65 65     ADC $65
.C:3fc6  65 BE     ADC $BE
.C:3fc8  BF         $BF
.C:3fc9  C0 C1     CPY #$C1
.C:3fcb  C2         $C2
.C:3fcc  C3         $C3
.C:3fcd  65 65     ADC $65
.C:3fcf  65 65     ADC $65
.C:3fd1  65 65     ADC $65
.C:3fd3  65 65     ADC $65
.C:3fd5  65 65     ADC $65
.C:3fd7  65 65     ADC $65
.C:3fd9  65 65     ADC $65
.C:3fdb  65 65     ADC $65
.C:3fdd  65 65     ADC $65
.C:3fdf  65 65     ADC $65
.C:3fe1  65 65     ADC $65
.C:3fe3  65 65     ADC $65
.C:3fe5  65 65     ADC $65
.C:3fe7  65 65     ADC $65
.C:3fe9  65 65     ADC $65
.C:3feb  65 65     ADC $65
.C:3fed  65 65     ADC $65
.C:3fef  65 65     ADC $65
.C:3ff1  65 65     ADC $65
.C:3ff3  65 65     ADC $65
.C:3ff5  65 65     ADC $65
.C:3ff7  65 65     ADC $65
.C:3ff9  65 65     ADC $65
.C:3ffb  65 65     ADC $65
.C:3ffd  65 65     ADC $65
.C:3fff  65 A9     ADC $A9

; Start execution address seems to be $4000
.C:4001  08        PHP
.C:4002  20 D2 FF  JSR $FFD2
.C:4005  A9 3F     LDA #$3F
.C:4007  8D 02 DD  STA $DD02
.C:400a  A9 C6     LDA #$C6
.C:400c  8D 00 DD  STA $DD00
.C:400f  A9 DE     LDA #$DE
.C:4011  8D 18 D0  STA $D018
.C:4014  A9 D8     LDA #$D8
.C:4016  8D 16 D0  STA $D016
.C:4019  A9 00     LDA #$00
.C:401b  8D 20 D0  STA $D020
.C:401e  8D 21 D0  STA $D021
.C:4021  A9 0B     LDA #$0B
.C:4023  8D 22 D0  STA $D022
.C:4026  A9 01     LDA #$01
.C:4028  20 72 45  JSR $4572
.C:402b  A2 31     LDX #$31
.C:402d  BD 80 71  LDA $7180,X
.C:4030  9D 00 81  STA $8100,X
.C:4033  CA        DEX
.C:4034  10 F7     BPL $402D
.C:4036  4C 6C 40  JMP $406C
.C:4039  A2 00     LDX #$00
.C:403b  A9 20     LDA #$20
.C:403d  9D 00 74  STA $7400,X
.C:4040  9D 00 75  STA $7500,X
.C:4043  9D 00 76  STA $7600,X
.C:4046  9D F0 76  STA $76F0,X
.C:4049  A9 01     LDA #$01
.C:404b  9D 00 D8  STA $D800,X
.C:404e  9D 00 D9  STA $D900,X
.C:4051  9D 00 DA  STA $DA00,X
.C:4054  9D F0 DA  STA $DAF0,X
.C:4057  E8        INX
.C:4058  D0 E1     BNE $403B
.C:405a  A2 18     LDX #$18
.C:405c  BD 4E 71  LDA $714E,X
.C:405f  9D 9F 77  STA $779F,X
.C:4062  BD 67 71  LDA $7167,X
.C:4065  9D C7 77  STA $77C7,X
.C:4068  CA        DEX
.C:4069  10 F1     BPL $405C
.C:406b  60        RTS
.C:406c  20 6E 3E  JSR $3E6E
.C:406f  78        SEI
.C:4070  A9 AD     LDA #$AD
.C:4072  8D 14 03  STA $0314
.C:4075  A9 46     LDA #$46
.C:4077  8D 15 03  STA $0315
.C:407a  58        CLI
.C:407b  A2 00     LDX #$00
.C:407d  BD B2 71  LDA $71B2,X
.C:4080  9D CD 74  STA $74CD,X
.C:4083  BD B2 72  LDA $72B2,X
.C:4086  9D CD 75  STA $75CD,X
.C:4089  BD 00 73  LDA $7300,X
.C:408c  9D 1B 76  STA $761B,X
.C:408f  CA        DEX
.C:4090  D0 EB     BNE $407D
.C:4092  A2 0D     LDX #$0D
.C:4094  BD 24 71  LDA $7124,X
.C:4097  9D 35 74  STA $7435,X
.C:409a  BD 32 71  LDA $7132,X
.C:409d  9D 85 74  STA $7485,X
.C:40a0  BD 40 71  LDA $7140,X
.C:40a3  9D 61 77  STA $7761,X
.C:40a6  A9 05     LDA #$05
.C:40a8  9D 35 D8  STA $D835,X
.C:40ab  9D 61 DB  STA $DB61,X
.C:40ae  CA        DEX
.C:40af  10 E3     BPL $4094
.C:40b1  A9 11     LDA #$11
.C:40b3  85 60     STA $60
.C:40b5  20 A7 44  JSR $44A7
.C:40b8  E8        INX
.C:40b9  8A        TXA
.C:40ba  29 07     AND #$07
.C:40bc  A2 00     LDX #$00
.C:40be  9D 1B DA  STA $DA1B,X
.C:40c1  9D CD D9  STA $D9CD,X
.C:40c4  9D CD D8  STA $D8CD,X
.C:40c7  E8        INX
.C:40c8  D0 F4     BNE $40BE
.C:40ca  A2 00     LDX #$00
.C:40cc  A0 00     LDY #$00
.C:40ce  88        DEY
.C:40cf  D0 FD     BNE $40CE
.C:40d1  CA        DEX
.C:40d2  D0 F8     BNE $40CC
.C:40d4  C6 60     DEC $60
.C:40d6  D0 DD     BNE $40B5
.C:40d8  A9 10     LDA #$10
.C:40da  85 60     STA $60
.C:40dc  A2 00     LDX #$00
.C:40de  A0 00     LDY #$00
.C:40e0  88        DEY
.C:40e1  D0 FD     BNE $40E0
.C:40e3  CA        DEX
.C:40e4  D0 F8     BNE $40DE
.C:40e6  C6 60     DEC $60
.C:40e8  D0 F2     BNE $40DC
.C:40ea  20 39 40  JSR $4039
.C:40ed  20 03 41  JSR $4103
.C:40f0  A2 11     LDX #$11
.C:40f2  BD 12 71  LDA $7112,X
.C:40f5  9D 8B 76  STA $768B,X
.C:40f8  A9 02     LDA #$02
.C:40fa  9D 8B DA  STA $DA8B,X
.C:40fd  CA        DEX
.C:40fe  10 F2     BPL $40F2
.C:4100  4C 95 46  JMP $4695
.C:4103  A2 06     LDX #$06
.C:4105  BD 0B 71  LDA $710B,X
.C:4108  9D 10 74  STA $7410,X
.C:410b  BD 00 81  LDA $8100,X
.C:410e  9D 38 74  STA $7438,X
.C:4111  BD 04 71  LDA $7104,X
.C:4114  9D 81 74  STA $7481,X
.C:4117  BD FD 70  LDA $70FD,X
.C:411a  9D A9 74  STA $74A9,X
.C:411d  BD F6 70  LDA $70F6,X
.C:4120  9D 89 74  STA $7489,X
.C:4123  BD EF 70  LDA $70EF,X
.C:4126  9D 92 74  STA $7492,X
.C:4129  BD 00 81  LDA $8100,X
.C:412c  9D D9 74  STA $74D9,X
.C:412f  BD 0A 81  LDA $810A,X
.C:4132  9D 29 75  STA $7529,X
.C:4135  BD 14 81  LDA $8114,X
.C:4138  9D 79 75  STA $7579,X
.C:413b  BD 1E 81  LDA $811E,X
.C:413e  9D C9 75  STA $75C9,X
.C:4141  BD 28 81  LDA $8128,X
.C:4144  9D 19 76  STA $7619,X
.C:4147  CA        DEX
.C:4148  10 BB     BPL $4105
.C:414a  A2 02     LDX #$02
.C:414c  BD E7 70  LDA $70E7,X
.C:414f  9D D2 74  STA $74D2,X
.C:4152  9D 22 75  STA $7522,X
.C:4155  9D 72 75  STA $7572,X
.C:4158  9D C2 75  STA $75C2,X
.C:415b  9D 12 76  STA $7612,X
.C:415e  BD 07 81  LDA $8107,X
.C:4161  9D E3 74  STA $74E3,X
.C:4164  BD 11 81  LDA $8111,X
.C:4167  9D 33 75  STA $7533,X
.C:416a  BD 1B 81  LDA $811B,X
.C:416d  9D 83 75  STA $7583,X
.C:4170  BD 25 81  LDA $8125,X
.C:4173  9D D3 75  STA $75D3,X
.C:4176  BD 2F 81  LDA $812F,X
.C:4179  9D 23 76  STA $7623,X
.C:417c  CA        DEX
.C:417d  10 CD     BPL $414C
.C:417f  A9 78     LDA #$78
.C:4181  85 60     STA $60
.C:4183  A9 D8     LDA #$D8
.C:4185  85 61     STA $61
.C:4187  A2 05     LDX #$05
.C:4189  A0 4F     LDY #$4F
.C:418b  BD E1 70  LDA $70E1,X
.C:418e  91 60     STA ($60),Y
.C:4190  88        DEY
.C:4191  10 FB     BPL $418E
.C:4193  A5 60     LDA $60
.C:4195  18        CLC
.C:4196  69 50     ADC #$50
.C:4198  85 60     STA $60
.C:419a  90 02     BCC $419E
.C:419c  E6 61     INC $61
.C:419e  CA        DEX
.C:419f  10 E8     BPL $4189
.C:41a1  A2 31     LDX #$31
.C:41a3  8E D5 74  STX $74D5
.C:41a6  E8        INX
.C:41a7  8E 25 75  STX $7525
.C:41aa  E8        INX
.C:41ab  8E 75 75  STX $7575
.C:41ae  E8        INX
.C:41af  8E C5 75  STX $75C5
.C:41b2  E8        INX
.C:41b3  8E 15 76  STX $7615
.C:41b6  60        RTS
.C:41b7  A9 0F     LDA #$0F
.C:41b9  85 60     STA $60
.C:41bb  A2 00     LDX #$00
.C:41bd  A0 00     LDY #$00
.C:41bf  88        DEY
.C:41c0  D0 FD     BNE $41BF
.C:41c2  CA        DEX
.C:41c3  D0 F8     BNE $41BD
.C:41c5  C6 60     DEC $60
.C:41c7  D0 F2     BNE $41BB
.C:41c9  A2 0F     LDX #$0F
.C:41cb  20 19 42  JSR $4219
.C:41ce  20 2A 3D  JSR $3D2A
.C:41d1  A2 4F     LDX #$4F
.C:41d3  BD 41 70  LDA $7041,X
.C:41d6  9D 00 74  STA $7400,X
.C:41d9  BD 91 70  LDA $7091,X
.C:41dc  20 19 44  JSR $4419
.C:41df  10 F2     BPL $41D3
.C:41e1  A2 00     LDX #$00
.C:41e3  BD 50 84  LDA $8450,X
.C:41e6  9D 50 74  STA $7450,X
.C:41e9  BD 50 88  LDA $8850,X
.C:41ec  9D 50 D8  STA $D850,X
.C:41ef  BD 50 85  LDA $8550,X
.C:41f2  9D 50 75  STA $7550,X
.C:41f5  BD 50 89  LDA $8950,X
.C:41f8  9D 50 D9  STA $D950,X
.C:41fb  BD 50 86  LDA $8650,X
.C:41fe  9D 50 76  STA $7650,X
.C:4201  BD 50 8A  LDA $8A50,X
.C:4204  9D 50 DA  STA $DA50,X
.C:4207  BD F0 86  LDA $86F0,X
.C:420a  9D F0 76  STA $76F0,X
.C:420d  BD F0 8A  LDA $8AF0,X
.C:4210  9D F0 DA  STA $DAF0,X
.C:4213  E8        INX
.C:4214  D0 CD     BNE $41E3
.C:4216  4C B1 44  JMP $44B1
.C:4219  86 60     STX $60
.C:421b  A2 00     LDX #$00
.C:421d  A9 00     LDA #$00
.C:421f  9D 00 88  STA $8800,X
.C:4222  9D 00 89  STA $8900,X
.C:4225  9D 00 8A  STA $8A00,X
.C:4228  9D 00 8B  STA $8B00,X
.C:422b  A9 20     LDA #$20
.C:422d  9D 00 84  STA $8400,X
.C:4230  9D 00 85  STA $8500,X
.C:4233  9D 00 86  STA $8600,X
.C:4236  9D 00 87  STA $8700,X
.C:4239  E8        INX
.C:423a  D0 E1     BNE $421D
.C:423c  A5 60     LDA $60
.C:423e  29 0F     AND #$0F
.C:4240  C9 0F     CMP #$0F
.C:4242  D0 03     BNE $4247
.C:4244  2C 74 A4  BIT $A474
.C:4247  A0 05     LDY #$05
.C:4249  84 61     STY $61
.C:424b  A6 60     LDX $60
.C:424d  BD 11 70  LDA $7011,X
.C:4250  39 AB 6F  AND $6FAB,Y
.C:4253  F0 0D     BEQ $4262
.C:4255  B9 9F 6F  LDA $6F9F,Y
.C:4258  85 62     STA $62
.C:425a  B9 A5 6F  LDA $6FA5,Y
.C:425d  85 63     STA $63
.C:425f  6C 62 00  JMP ($0062)
.C:4262  A4 61     LDY $61
.C:4264  88        DEY
.C:4265  10 E2     BPL $4249
.C:4267  60        RTS
.C:4268  A2 00     LDX #$00
.C:426a  A9 3E     LDA #$3E
.C:426c  9D B8 85  STA $85B8,X
.C:426f  9D B8 86  STA $86B8,X
.C:4272  9D 00 87  STA $8700,X
.C:4275  A4 60     LDY $60
.C:4277  B9 B1 6F  LDA $6FB1,Y
.C:427a  9D B8 89  STA $89B8,X
.C:427d  20 17 3E  JSR $3E17
.C:4280  E8        INX
.C:4281  D0 E7     BNE $426A
.C:4283  20 1E 3E  JSR $3E1E
.C:4286  60        RTS
.C:4287  20 DA 43  JSR $43DA
.C:428a  4C 62 42  JMP $4262
.C:428d  20 DA 43  JSR $43DA
.C:4290  A9 C3     LDA #$C3
.C:4292  85 62     STA $62
.C:4294  A9 85     LDA #$85
.C:4296  85 63     STA $63
.C:4298  A2 09     LDX #$09
.C:429a  A0 11     LDY #$11
.C:429c  A9 20     LDA #$20
.C:429e  91 62     STA ($62),Y
.C:42a0  88        DEY
.C:42a1  10 FB     BPL $429E
.C:42a3  C8        INY
.C:42a4  A9 3C     LDA #$3C
.C:42a6  E0 09     CPX #$09
.C:42a8  D0 02     BNE $42AC
.C:42aa  A9 3B     LDA #$3B
.C:42ac  91 62     STA ($62),Y
.C:42ae  4C B8 42  JMP $42B8
.C:42b1  A5 63     LDA $63
.C:42b3  49 0C     EOR #$0C
.C:42b5  85 63     STA $63
.C:42b7  60        RTS
.C:42b8  20 B1 42  JSR $42B1
.C:42bb  A9 02     LDA #$02
.C:42bd  91 62     STA ($62),Y
.C:42bf  20 B1 42  JSR $42B1
.C:42c2  A5 62     LDA $62
.C:42c4  18        CLC
.C:42c5  69 28     ADC #$28
.C:42c7  85 62     STA $62
.C:42c9  90 02     BCC $42CD
.C:42cb  E6 63     INC $63
.C:42cd  CA        DEX
.C:42ce  10 CA     BPL $429A
.C:42d0  A2 11     LDX #$11
.C:42d2  A9 02     LDA #$02
.C:42d4  9D 53 8B  STA $8B53,X
.C:42d7  A9 72     LDA #$72
.C:42d9  9D 53 87  STA $8753,X
.C:42dc  CA        DEX
.C:42dd  10 F3     BPL $42D2
.C:42df  4C 62 42  JMP $4262
.C:42e2  A9 99     LDA #$99
.C:42e4  20 F4 42  JSR $42F4
.C:42e7  A9 A2     LDA #$A2
.C:42e9  20 F4 42  JSR $42F4
.C:42ec  A9 AB     LDA #$AB
.C:42ee  20 F4 42  JSR $42F4
.C:42f1  4C 62 42  JMP $4262
.C:42f4  A2 4F     LDX #$4F
.C:42f6  A0 6F     LDY #$6F
.C:42f8  86 64     STX $64
.C:42fa  84 65     STY $65
.C:42fc  85 62     STA $62
.C:42fe  A9 85     LDA #$85
.C:4300  85 63     STA $63
.C:4302  A2 04     LDX #$04
.C:4304  A0 03     LDY #$03
.C:4306  B1 64     LDA ($64),Y
.C:4308  91 62     STA ($62),Y
.C:430a  20 B1 42  JSR $42B1
.C:430d  A5 64     LDA $64
.C:430f  48        PHA
.C:4310  18        CLC
.C:4311  69 14     ADC #$14
.C:4313  85 64     STA $64
.C:4315  B1 64     LDA ($64),Y
.C:4317  91 62     STA ($62),Y
.C:4319  68        PLA
.C:431a  85 64     STA $64
.C:431c  20 B1 42  JSR $42B1
.C:431f  88        DEY
.C:4320  10 E4     BPL $4306
.C:4322  A5 64     LDA $64
.C:4324  18        CLC
.C:4325  69 04     ADC #$04
.C:4327  85 64     STA $64
.C:4329  A5 62     LDA $62
.C:432b  18        CLC
.C:432c  69 28     ADC #$28
.C:432e  85 62     STA $62
.C:4330  90 02     BCC $4334
.C:4332  E6 63     INC $63
.C:4334  CA        DEX
.C:4335  10 CD     BPL $4304
.C:4337  60        RTS
.C:4338  A9 99     LDA #$99
.C:433a  A2 77     LDX #$77
.C:433c  20 F6 42  JSR $42F6
.C:433f  A9 A2     LDA #$A2
.C:4341  A2 77     LDX #$77
.C:4343  20 F6 42  JSR $42F6
.C:4346  A9 AB     LDA #$AB
.C:4348  A2 77     LDX #$77
.C:434a  20 F6 42  JSR $42F6
.C:434d  4C 62 42  JMP $4262
.C:4350  A9 70     LDA #$70
.C:4352  85 62     STA $62
.C:4354  A9 84     LDA #$84
.C:4356  85 63     STA $63
.C:4358  A9 B8     LDA #$B8
.C:435a  85 64     STA $64
.C:435c  A9 6E     LDA #$6E
.C:435e  85 65     STA $65
.C:4360  A2 08     LDX #$08
.C:4362  A0 07     LDY #$07
.C:4364  B1 64     LDA ($64),Y
.C:4366  91 62     STA ($62),Y
.C:4368  20 B1 42  JSR $42B1
.C:436b  98        TYA
.C:436c  18        CLC
.C:436d  69 48     ADC #$48
.C:436f  A8        TAY
.C:4370  B1 64     LDA ($64),Y
.C:4372  48        PHA
.C:4373  98        TYA
.C:4374  38        SEC
.C:4375  E9 48     SBC #$48
.C:4377  A8        TAY
.C:4378  68        PLA
.C:4379  91 62     STA ($62),Y
.C:437b  20 B1 42  JSR $42B1
.C:437e  88        DEY
.C:437f  10 E3     BPL $4364
.C:4381  A5 62     LDA $62
.C:4383  18        CLC
.C:4384  69 28     ADC #$28
.C:4386  85 62     STA $62
.C:4388  90 02     BCC $438C
.C:438a  E6 63     INC $63
.C:438c  A5 64     LDA $64
.C:438e  18        CLC
.C:438f  69 08     ADC #$08
.C:4391  85 64     STA $64
.C:4393  CA        DEX
.C:4394  10 CC     BPL $4362
.C:4396  4C 62 42  JMP $4262
.C:4399  A9 85     LDA #$85
.C:439b  85 62     STA $62
.C:439d  A9 84     LDA #$84
.C:439f  85 63     STA $63
.C:43a1  A9 30     LDA #$30
.C:43a3  85 64     STA $64
.C:43a5  A9 6E     LDA #$6E
.C:43a7  85 65     STA $65
.C:43a9  A2 07     LDX #$07
.C:43ab  A0 0D     LDY #$0D
.C:43ad  B1 64     LDA ($64),Y
.C:43af  91 62     STA ($62),Y
.C:43b1  20 B1 42  JSR $42B1
.C:43b4  A9 0C     LDA #$0C
.C:43b6  91 62     STA ($62),Y
.C:43b8  20 B1 42  JSR $42B1
.C:43bb  88        DEY
.C:43bc  10 EF     BPL $43AD
.C:43be  A5 62     LDA $62
.C:43c0  18        CLC
.C:43c1  69 28     ADC #$28
.C:43c3  85 62     STA $62
.C:43c5  90 02     BCC $43C9
.C:43c7  E6 63     INC $63
.C:43c9  A5 64     LDA $64
.C:43cb  18        CLC
.C:43cc  69 0E     ADC #$0E
.C:43ce  85 64     STA $64
.C:43d0  90 02     BCC $43D4
.C:43d2  E6 65     INC $65
.C:43d4  CA        DEX
.C:43d5  10 D4     BPL $43AB
.C:43d7  4C 62 42  JMP $4262
.C:43da  20 68 42  JSR $4268
.C:43dd  A9 9D     LDA #$9D
.C:43df  85 62     STA $62
.C:43e1  A9 84     LDA #$84
.C:43e3  85 63     STA $63
.C:43e5  A9 A0     LDA #$A0
.C:43e7  85 64     STA $64
.C:43e9  A9 6E     LDA #$6E
.C:43eb  85 65     STA $65
.C:43ed  A2 07     LDX #$07
.C:43ef  A0 02     LDY #$02
.C:43f1  B1 64     LDA ($64),Y
.C:43f3  91 62     STA ($62),Y
.C:43f5  20 B1 42  JSR $42B1
.C:43f8  A9 0C     LDA #$0C
.C:43fa  91 62     STA ($62),Y
.C:43fc  20 B1 42  JSR $42B1
.C:43ff  88        DEY
.C:4400  10 EF     BPL $43F1
.C:4402  E6 64     INC $64
.C:4404  E6 64     INC $64
.C:4406  E6 64     INC $64
.C:4408  A5 62     LDA $62
.C:440a  18        CLC
.C:440b  69 28     ADC #$28
.C:440d  85 62     STA $62
.C:440f  90 02     BCC $4413
.C:4411  E6 63     INC $63
.C:4413  CA        DEX
.C:4414  10 D9     BPL $43EF
.C:4416  4C 62 42  JMP $4262
.C:4419  9D 00 D8  STA $D800,X
.C:441c  CA        DEX
.C:441d  60        RTS
.C:441e  A2 09     LDX #$09
.C:4420  20 19 42  JSR $4219
.C:4423  20 39 44  JSR $4439
.C:4426  A2 08     LDX #$08
.C:4428  20 19 42  JSR $4219
.C:442b  20 39 44  JSR $4439
.C:442e  A2 00     LDX #$00
.C:4430  20 19 42  JSR $4219
.C:4433  20 39 44  JSR $4439
.C:4436  4C 57 45  JMP $4557
.C:4439  A2 07     LDX #$07
.C:443b  BD 28 6E  LDA $6E28,X
.C:443e  9D C0 02  STA $02C0,X
.C:4441  CA        DEX
.C:4442  10 F7     BPL $443B
.C:4444  A2 27     LDX #$27
.C:4446  8A        TXA
.C:4447  48        PHA
.C:4448  20 9A 44  JSR $449A
.C:444b  68        PLA
.C:444c  AA        TAX
.C:444d  CA        DEX
.C:444e  10 F6     BPL $4446
.C:4450  60        RTS
.C:4451  A2 02     LDX #$02
.C:4453  DE C4 02  DEC $02C4,X
.C:4456  CA        DEX
.C:4457  CA        DEX
.C:4458  10 F9     BPL $4453
.C:445a  A2 07     LDX #$07
.C:445c  BD C0 02  LDA $02C0,X
.C:445f  95 62     STA $62,X
.C:4461  CA        DEX
.C:4462  10 F8     BPL $445C
.C:4464  A2 16     LDX #$16
.C:4466  A0 26     LDY #$26
.C:4468  B1 62     LDA ($62),Y
.C:446a  48        PHA
.C:446b  B1 64     LDA ($64),Y
.C:446d  C8        INY
.C:446e  91 64     STA ($64),Y
.C:4470  68        PLA
.C:4471  91 62     STA ($62),Y
.C:4473  88        DEY
.C:4474  88        DEY
.C:4475  10 F1     BPL $4468
.C:4477  A0 00     LDY #$00
.C:4479  B1 66     LDA ($66),Y
.C:447b  91 62     STA ($62),Y
.C:447d  B1 68     LDA ($68),Y
.C:447f  91 64     STA ($64),Y
.C:4481  8A        TXA
.C:4482  48        PHA
.C:4483  A2 06     LDX #$06
.C:4485  B5 62     LDA $62,X
.C:4487  18        CLC
.C:4488  69 28     ADC #$28
.C:448a  95 62     STA $62,X
.C:448c  90 02     BCC $4490
.C:448e  F6 63     INC $63,X
.C:4490  CA        DEX
.C:4491  CA        DEX
.C:4492  10 F1     BPL $4485
.C:4494  68        PLA
.C:4495  AA        TAX
.C:4496  CA        DEX
.C:4497  10 CD     BPL $4466
.C:4499  60        RTS
.C:449a  A2 20     LDX #$20
.C:449c  A0 00     LDY #$00
.C:449e  88        DEY
.C:449f  D0 FD     BNE $449E
.C:44a1  CA        DEX
.C:44a2  D0 F8     BNE $449C
.C:44a4  4C 51 44  JMP $4451
.C:44a7  AE CD D8  LDX $D8CD
.C:44aa  E0 07     CPX #$07
.C:44ac  D0 02     BNE $44B0
.C:44ae  A2 00     LDX #$00
.C:44b0  60        RTS
.C:44b1  A9 00     LDA #$00
.C:44b3  8D 3C 03  STA $033C
.C:44b6  8D 3D 03  STA $033D
.C:44b9  A9 01     LDA #$01
.C:44bb  20 3B 46  JSR $463B
.C:44be  A9 38     LDA #$38
.C:44c0  8D 3E 03  STA $033E
.C:44c3  78        SEI
.C:44c4  A9 80     LDA #$80
.C:44c6  8D 14 03  STA $0314
.C:44c9  A9 45     LDA #$45
.C:44cb  8D 15 03  STA $0315
.C:44ce  58        CLI
.C:44cf  AD 3C 03  LDA $033C
.C:44d2  F0 FB     BEQ $44CF
.C:44d4  4C 1E 44  JMP $441E
.C:44d7  AE 3D 03  LDX $033D
.C:44da  A9 D8     LDA #$D8
.C:44dc  38        SEC
.C:44dd  FD 18 6E  SBC $6E18,X
.C:44e0  8D 01 D0  STA $D001
.C:44e3  BD 08 6E  LDA $6E08,X
.C:44e6  8D F8 77  STA $77F8
.C:44e9  A9 00     LDA #$00
.C:44eb  8D 17 D0  STA $D017
.C:44ee  8D 1D D0  STA $D01D
.C:44f1  8D 1B D0  STA $D01B
.C:44f4  A9 05     LDA #$05
.C:44f6  8D 27 D0  STA $D027
.C:44f9  A9 01     LDA #$01
.C:44fb  8D 1C D0  STA $D01C
.C:44fe  8D 15 D0  STA $D015
.C:4501  AD 3C 03  LDA $033C
.C:4504  F0 3C     BEQ $4542
.C:4506  C9 01     CMP #$01
.C:4508  D0 03     BNE $450D
.C:450a  4C 24 45  JMP $4524
.C:450d  20 31 45  JSR $4531
.C:4510  AD 3E 03  LDA $033E
.C:4513  18        CLC
.C:4514  69 18     ADC #$18
.C:4516  8D 00 D0  STA $D000
.C:4519  AD 3F 03  LDA $033F
.C:451c  69 00     ADC #$00
.C:451e  8D 10 D0  STA $D010
.C:4521  4C 0A 45  JMP $450A
.C:4524  AE 3D 03  LDX $033D
.C:4527  E8        INX
.C:4528  8A        TXA
.C:4529  29 0F     AND #$0F
.C:452b  8D 3D 03  STA $033D
.C:452e  4C EF 3C  JMP $3CEF
.C:4531  A2 01     LDX #$01
.C:4533  AD 3E 03  LDA $033E
.C:4536  D0 03     BNE $453B
.C:4538  CE 3F 03  DEC $033F
.C:453b  CE 3E 03  DEC $033E
.C:453e  CA        DEX
.C:453f  10 F2     BPL $4533
.C:4541  60        RTS
.C:4542  20 31 45  JSR $4531
.C:4545  AD 3F 03  LDA $033F
.C:4548  D0 0A     BNE $4554
.C:454a  AD 3E 03  LDA $033E
.C:454d  C9 90     CMP #$90
.C:454f  D0 03     BNE $4554
.C:4551  EE 3C 03  INC $033C
.C:4554  4C 10 45  JMP $4510
.C:4557  A9 02     LDA #$02
.C:4559  8D 3C 03  STA $033C
.C:455c  AD 3E 03  LDA $033E
.C:455f  C9 11     CMP #$11
.C:4561  B0 F9     BCS $455C
.C:4563  78        SEI
.C:4564  A9 31     LDA #$31
.C:4566  8D 14 03  STA $0314
.C:4569  A9 EA     LDA #$EA
.C:456b  8D 15 03  STA $0315
.C:456e  58        CLI
.C:456f  4C E1 3C  JMP $3CE1
.C:4572  8D 23 D0  STA $D023
.C:4575  A9 09     LDA #$09
.C:4577  8D 25 D0  STA $D025
.C:457a  A9 0F     LDA #$0F
.C:457c  8D 26 D0  STA $D026
.C:457f  60        RTS
.C:4580  CE 40 03  DEC $0340
.C:4583  D0 A9     BNE $452E
.C:4585  A9 02     LDA #$02
.C:4587  8D 40 03  STA $0340
.C:458a  4C D7 44  JMP $44D7
.C:458d  CE 01 D0  DEC $D001
.C:4590  A2 08     LDX #$08
.C:4592  A0 00     LDY #$00
.C:4594  88        DEY
.C:4595  D0 FD     BNE $4594
.C:4597  CA        DEX
.C:4598  D0 F8     BNE $4592
.C:459a  20 A7 46  JSR $46A7
.C:459d  D0 EE     BNE $458D
.C:459f  60        RTS
.C:45a0  EA        NOP
.C:45a1  A2 01     LDX #$01
.C:45a3  EE 3E 03  INC $033E
.C:45a6  D0 03     BNE $45AB
.C:45a8  EE 3F 03  INC $033F
.C:45ab  CA        DEX
.C:45ac  10 F5     BPL $45A3
.C:45ae  AD 3E 03  LDA $033E
.C:45b1  18        CLC
.C:45b2  69 18     ADC #$18
.C:45b4  8D 00 D0  STA $D000
.C:45b7  AD 3F 03  LDA $033F
.C:45ba  69 00     ADC #$00
.C:45bc  8D 10 D0  STA $D010
.C:45bf  AD 3E 03  LDA $033E
.C:45c2  4A        LSR A
.C:45c3  29 03     AND #$03
.C:45c5  20 E4 45  JSR $45E4
.C:45c8  8D F8 77  STA $77F8
.C:45cb  A2 30     LDX #$30
.C:45cd  A0 00     LDY #$00
.C:45cf  88        DEY
.C:45d0  D0 FD     BNE $45CF
.C:45d2  CA        DEX
.C:45d3  D0 F8     BNE $45CD
.C:45d5  AD 3F 03  LDA $033F
.C:45d8  F0 C7     BEQ $45A1
.C:45da  AD 3E 03  LDA $033E
.C:45dd  C9 20     CMP #$20
.C:45df  90 C0     BCC $45A1
.C:45e1  4C 82 46  JMP $4682
.C:45e4  AA        TAX
.C:45e5  BD 04 6E  LDA $6E04,X
.C:45e8  60        RTS
.C:45e9  A9 00     LDA #$00
.C:45eb  8D 3C 03  STA $033C
.C:45ee  AE 3C 03  LDX $033C
.C:45f1  A9 75     LDA #$75
.C:45f3  38        SEC
.C:45f4  FD 18 6E  SBC $6E18,X
.C:45f7  8D 01 D0  STA $D001
.C:45fa  BD 08 6E  LDA $6E08,X
.C:45fd  8D F8 77  STA $77F8
.C:4600  20 1C 46  JSR $461C
.C:4603  A2 20     LDX #$20
.C:4605  A0 00     LDY #$00
.C:4607  88        DEY
.C:4608  D0 FD     BNE $4607
.C:460a  CA        DEX
.C:460b  D0 F8     BNE $4605
.C:460d  AD 3F 03  LDA $033F
.C:4610  D0 DC     BNE $45EE
.C:4612  AD 3E 03  LDA $033E
.C:4615  C9 04     CMP #$04
.C:4617  B0 D5     BCS $45EE
.C:4619  4C 55 47  JMP $4755
.C:461c  20 42 46  JSR $4642
.C:461f  AD 3E 03  LDA $033E
.C:4622  18        CLC
.C:4623  69 18     ADC #$18
.C:4625  8D 00 D0  STA $D000
.C:4628  AD 3F 03  LDA $033F
.C:462b  69 00     ADC #$00
.C:462d  8D 10 D0  STA $D010
.C:4630  AE 3C 03  LDX $033C
.C:4633  E8        INX
.C:4634  8A        TXA
.C:4635  29 0F     AND #$0F
.C:4637  8D 3C 03  STA $033C
.C:463a  60        RTS
.C:463b  8D 3F 03  STA $033F
.C:463e  8D 40 03  STA $0340
.C:4641  60        RTS
.C:4642  20 31 45  JSR $4531
.C:4645  AD 3F 03  LDA $033F
.C:4648  D0 F7     BNE $4641
.C:464a  A2 07     LDX #$07
.C:464c  AD 3E 03  LDA $033E
.C:464f  DD FC 6D  CMP $6DFC,X
.C:4652  F0 04     BEQ $4658
.C:4654  CA        DEX
.C:4655  10 F5     BPL $464C
.C:4657  60        RTS
.C:4658  BD F4 6D  LDA $6DF4,X
.C:465b  85 62     STA $62
.C:465d  85 64     STA $64
.C:465f  A9 75     LDA #$75
.C:4661  85 63     STA $63
.C:4663  A9 D9     LDA #$D9
.C:4665  85 65     STA $65
.C:4667  8A        TXA
.C:4668  0A        ASL A
.C:4669  0A        ASL A
.C:466a  85 66     STA $66
.C:466c  A2 03     LDX #$03
.C:466e  A4 66     LDY $66
.C:4670  B9 D0 6D  LDA $6DD0,Y
.C:4673  BC F0 6D  LDY $6DF0,X
.C:4676  91 62     STA ($62),Y
.C:4678  A9 0E     LDA #$0E
.C:467a  91 64     STA ($64),Y
.C:467c  E6 66     INC $66
.C:467e  CA        DEX
.C:467f  10 ED     BPL $466E
.C:4681  60        RTS
.C:4682  A2 08     LDX #$08
.C:4684  BD C7 6D  LDA $6DC7,X
.C:4687  9D 00 75  STA $7500,X
.C:468a  A9 01     LDA #$01
.C:468c  9D 00 D9  STA $D900,X
.C:468f  CA        DEX
.C:4690  10 F2     BPL $4684
.C:4692  4C E9 45  JMP $45E9
.C:4695  20 B7 41  JSR $41B7
.C:4698  78        SEI
.C:4699  A9 AD     LDA #$AD
.C:469b  8D 14 03  STA $0314
.C:469e  A9 46     LDA #$46
.C:46a0  8D 15 03  STA $0315
.C:46a3  58        CLI
.C:46a4  4C A1 45  JMP $45A1
.C:46a7  AD 01 D0  LDA $D001
.C:46aa  C9 75     CMP #$75
.C:46ac  60        RTS
.C:46ad  A5 C5     LDA $C5
.C:46af  C9 04     CMP #$04
.C:46b1  F0 1D     BEQ $46D0
.C:46b3  C9 3C     CMP #$3C
.C:46b5  F0 03     BEQ $46BA
.C:46b7  4C 31 EA  JMP $EA31
.C:46ba  20 4D 47  JSR $474D
.C:46bd  A2 F8     LDX #$F8
.C:46bf  9A        TXS
.C:46c0  4C 82 47  JMP $4782
.C:46c3  78        SEI
.C:46c4  A9 31     LDA #$31
.C:46c6  8D 14 03  STA $0314
.C:46c9  A9 EA     LDA #$EA
.C:46cb  8D 15 03  STA $0315
.C:46ce  58        CLI
.C:46cf  60        RTS
.C:46d0  20 4D 47  JSR $474D
.C:46d3  A2 F8     LDX #$F8
.C:46d5  9A        TXS
.C:46d6  20 39 40  JSR $4039
.C:46d9  A5 C5     LDA $C5
.C:46db  C9 40     CMP #$40
.C:46dd  D0 FA     BNE $46D9
.C:46df  A2 19     LDX #$19
.C:46e1  BD 64 67  LDA $6764,X
.C:46e4  9D 2F 74  STA $742F,X
.C:46e7  BD 7E 67  LDA $677E,X
.C:46ea  9D CF 74  STA $74CF,X
.C:46ed  BD 98 67  LDA $6798,X
.C:46f0  9D 47 75  STA $7547,X
.C:46f3  BD B2 67  LDA $67B2,X
.C:46f6  9D BF 75  STA $75BF,X
.C:46f9  BD CC 67  LDA $67CC,X
.C:46fc  9D 37 76  STA $7637,X
.C:46ff  BD E6 67  LDA $67E6,X
.C:4702  9D AF 76  STA $76AF,X
.C:4705  CA        DEX
.C:4706  10 D9     BPL $46E1
.C:4708  A2 03     LDX #$03
.C:470a  BD C3 6D  LDA $6DC3,X
.C:470d  BC F0 6D  LDY $6DF0,X
.C:4710  99 A4 75  STA $75A4,Y
.C:4713  99 8C 76  STA $768C,Y
.C:4716  A9 0C     LDA #$0C
.C:4718  99 A4 D9  STA $D9A4,Y
.C:471b  99 8C DA  STA $DA8C,Y
.C:471e  CA        DEX
.C:471f  10 E9     BPL $470A
.C:4721  A2 21     LDX #$21
.C:4723  BD 42 67  LDA $6742,X
.C:4726  9D A3 74  STA $74A3,X
.C:4729  CA        DEX
.C:472a  10 F7     BPL $4723
.C:472c  78        SEI
.C:472d  A9 AD     LDA #$AD
.C:472f  8D 14 03  STA $0314
.C:4732  A9 46     LDA #$46
.C:4734  8D 15 03  STA $0315
.C:4737  58        CLI
.C:4738  A9 1F     LDA #$1F
.C:473a  85 60     STA $60
.C:473c  A2 00     LDX #$00
.C:473e  A0 00     LDY #$00
.C:4740  88        DEY
.C:4741  D0 FD     BNE $4740
.C:4743  CA        DEX
.C:4744  D0 F8     BNE $473E
.C:4746  C6 60     DEC $60
.C:4748  D0 F2     BNE $473C
.C:474a  4C 7A 47  JMP $477A
.C:474d  A9 00     LDA #$00
.C:474f  8D 15 D0  STA $D015
.C:4752  4C C3 46  JMP $46C3
.C:4755  A9 40     LDA #$40
.C:4757  85 60     STA $60
.C:4759  AD 73 D9  LDA $D973
.C:475c  49 04     EOR #$04
.C:475e  A2 11     LDX #$11
.C:4760  9D 73 D9  STA $D973,X
.C:4763  9D 9B D9  STA $D99B,X
.C:4766  CA        DEX
.C:4767  10 F7     BPL $4760
.C:4769  A2 40     LDX #$40
.C:476b  A0 00     LDY #$00
.C:476d  88        DEY
.C:476e  D0 FD     BNE $476D
.C:4770  CA        DEX
.C:4771  D0 F8     BNE $476B
.C:4773  C6 60     DEC $60
.C:4775  D0 E2     BNE $4759
.C:4777  4C 38 47  JMP $4738
.C:477a  A9 00     LDA #$00
.C:477c  8D 15 D0  STA $D015
.C:477f  4C 6C 40  JMP $406C
.C:4782  A2 00     LDX #$00
.C:4784  A9 20     LDA #$20
.C:4786  9D 00 74  STA $7400,X
.C:4789  9D 00 75  STA $7500,X
.C:478c  9D 00 76  STA $7600,X
.C:478f  9D F0 76  STA $76F0,X
.C:4792  A9 01     LDA #$01
.C:4794  9D 00 D8  STA $D800,X
.C:4797  9D 00 D9  STA $D900,X
.C:479a  9D 00 DA  STA $DA00,X
.C:479d  9D F0 DA  STA $DAF0,X
.C:47a0  E8        INX
.C:47a1  D0 E1     BNE $4784
.C:47a3  A2 07     LDX #$07
.C:47a5  BD 80 6D  LDA $6D80,X
.C:47a8  9D 88 74  STA $7488,X
.C:47ab  BD 88 6D  LDA $6D88,X
.C:47ae  9D 00 75  STA $7500,X
.C:47b1  BD 90 6D  LDA $6D90,X
.C:47b4  9D 50 75  STA $7550,X
.C:47b7  BD 98 6D  LDA $6D98,X
.C:47ba  9D A0 75  STA $75A0,X
.C:47bd  CA        DEX
.C:47be  10 E5     BPL $47A5
.C:47c0  20 E4 FF  JSR $FFE4
.C:47c3  C9 4A     CMP #$4A
.C:47c5  F0 04     BEQ $47CB
.C:47c7  C9 4B     CMP #$4B
.C:47c9  D0 F5     BNE $47C0
.C:47cb  38        SEC
.C:47cc  E9 4A     SBC #$4A
.C:47ce  8D FC 03  STA $03FC
.C:47d1  C9 01     CMP #$01
.C:47d3  F0 0E     BEQ $47E3
.C:47d5  A2 17     LDX #$17
.C:47d7  BD A0 6D  LDA $6DA0,X
.C:47da  9D 60 76  STA $7660,X
.C:47dd  CA        DEX
.C:47de  10 F7     BPL $47D7
.C:47e0  4C 00 48  JMP $4800
.C:47e3  A2 11     LDX #$11
.C:47e5  BD FA 66  LDA $66FA,X
.C:47e8  9D 63 76  STA $7663,X
.C:47eb  BD 0C 67  LDA $670C,X
.C:47ee  9D DB 76  STA $76DB,X
.C:47f1  BD 1E 67  LDA $671E,X
.C:47f4  9D 2B 77  STA $772B,X
.C:47f7  BD 30 67  LDA $6730,X
.C:47fa  9D 7B 77  STA $777B,X
.C:47fd  CA        DEX
.C:47fe  10 E5     BPL $47E5
.C:4800  A9 16     LDA #$16
.C:4802  85 60     STA $60
.C:4804  A2 00     LDX #$00
.C:4806  A0 00     LDY #$00
.C:4808  88        DEY
.C:4809  D0 FD     BNE $4808
.C:480b  CA        DEX
.C:480c  D0 F8     BNE $4806
.C:480e  C6 60     DEC $60
.C:4810  D0 F2     BNE $4804
.C:4812  A9 0F     LDA #$0F
.C:4814  8D 18 D4  STA $D418
.C:4817  20 5D 54  JSR $545D
.C:481a  A9 00     LDA #$00
.C:481c  8D 3D 03  STA $033D
.C:481f  8D 3E 03  STA $033E
.C:4822  8D 41 03  STA $0341
.C:4825  A2 0B     LDX #$0B
.C:4827  9D 45 03  STA $0345,X
.C:482a  CA        DEX
.C:482b  10 FA     BPL $4827
.C:482d  A9 10     LDA #$10
.C:482f  8D 40 03  STA $0340
.C:4832  8D 44 03  STA $0344
.C:4835  A9 01     LDA #$01
.C:4837  8D 42 03  STA $0342
.C:483a  A9 80     LDA #$80
.C:483c  8D 43 03  STA $0343
.C:483f  A9 00     LDA #$00
.C:4841  8D 15 D0  STA $D015
.C:4844  4C 0F 49  JMP $490F
.C:4847  AE 3D 03  LDX $033D
.C:484a  20 A7 56  JSR $56A7
.C:484d  20 45 57  JSR $5745
.C:4850  20 7C 53  JSR $537C
.C:4853  A2 08     LDX #$08
.C:4855  20 C7 4B  JSR $4BC7
.C:4858  9D 00 75  STA $7500,X
.C:485b  A9 01     LDA #$01
.C:485d  9D 00 D9  STA $D900,X
.C:4860  CA        DEX
.C:4861  10 F2     BPL $4855
.C:4863  A9 09     LDA #$09
.C:4865  85 60     STA $60
.C:4867  A2 00     LDX #$00
.C:4869  A0 00     LDY #$00
.C:486b  88        DEY
.C:486c  D0 FD     BNE $486B
.C:486e  CA        DEX
.C:486f  D0 F8     BNE $4869
.C:4871  C6 60     DEC $60
.C:4873  D0 F2     BNE $4867
.C:4875  A2 08     LDX #$08
.C:4877  A9 20     LDA #$20
.C:4879  20 D7 4B  JSR $4BD7
.C:487c  CA        DEX
.C:487d  10 F8     BPL $4877
.C:487f  4C 17 49  JMP $4917
.C:4882  A2 00     LDX #$00
.C:4884  BD 49 03  LDA $0349,X
.C:4887  D0 05     BNE $488E
.C:4889  E8        INX
.C:488a  E0 06     CPX #$06
.C:488c  D0 F6     BNE $4884
.C:488e  BD 49 03  LDA $0349,X
.C:4891  09 30     ORA #$30
.C:4893  9D 1A 74  STA $741A,X
.C:4896  E8        INX
.C:4897  E0 07     CPX #$07
.C:4899  D0 F3     BNE $488E
.C:489b  AE 51 03  LDX $0351
.C:489e  F0 10     BEQ $48B0
.C:48a0  A9 20     LDA #$20
.C:48a2  9D 41 74  STA $7441,X
.C:48a5  CA        DEX
.C:48a6  F0 08     BEQ $48B0
.C:48a8  A9 3D     LDA #$3D
.C:48aa  9D 41 74  STA $7441,X
.C:48ad  CA        DEX
.C:48ae  D0 F8     BNE $48A8
.C:48b0  20 B2 4B  JSR $4BB2
.C:48b3  F0 1F     BEQ $48D4
.C:48b5  85 60     STA $60
.C:48b7  A9 74     LDA #$74
.C:48b9  85 63     STA $63
.C:48bb  A9 01     LDA #$01
.C:48bd  85 62     STA $62
.C:48bf  A2 03     LDX #$03
.C:48c1  BD C3 6D  LDA $6DC3,X
.C:48c4  BC F0 6D  LDY $6DF0,X
.C:48c7  91 62     STA ($62),Y
.C:48c9  CA        DEX
.C:48ca  10 F5     BPL $48C1
.C:48cc  E6 62     INC $62
.C:48ce  E6 62     INC $62
.C:48d0  C6 60     DEC $60
.C:48d2  D0 EB     BNE $48BF
.C:48d4  A2 1B     LDX #$1B
.C:48d6  BC 9D 66  LDY $669D,X
.C:48d9  BD B9 66  LDA $66B9,X
.C:48dc  99 48 77  STA $7748,Y
.C:48df  BD D5 66  LDA $66D5,X
.C:48e2  99 48 DB  STA $DB48,Y
.C:48e5  CA        DEX
.C:48e6  10 EE     BPL $48D6
.C:48e8  A2 07     LDX #$07
.C:48ea  A9 00     LDA #$00
.C:48ec  9D 18 7B  STA $7B18,X
.C:48ef  CA        DEX
.C:48f0  10 FA     BPL $48EC
.C:48f2  AD 3D 03  LDA $033D
.C:48f5  29 03     AND #$03
.C:48f7  AA        TAX
.C:48f8  BD 99 66  LDA $6699,X
.C:48fb  8D 1E 7B  STA $7B1E
.C:48fe  8D 1D 7B  STA $7B1D
.C:4901  AD 3D 03  LDA $033D
.C:4904  4A        LSR A
.C:4905  4A        LSR A
.C:4906  29 03     AND #$03
.C:4908  AA        TAX
.C:4909  A9 63     LDA #$63
.C:490b  9D 71 77  STA $7771,X
.C:490e  60        RTS
.C:490f  A9 05     LDA #$05
.C:4911  8D 51 03  STA $0351
.C:4914  4C 4D 48  JMP $484D
.C:4917  20 4B 4D  JSR $4D4B
.C:491a  20 20 49  JSR $4920
.C:491d  4C 65 49  JMP $4965
.C:4920  AD FC 03  LDA $03FC
.C:4923  D0 0B     BNE $4930
.C:4925  AD 00 DC  LDA $DC00
.C:4928  49 1F     EOR #$1F
.C:492a  29 1C     AND #$1C
.C:492c  8D FF 03  STA $03FF
.C:492f  60        RTS
.C:4930  A2 07     LDX #$07
.C:4932  BD C0 5A  LDA $5AC0,X
.C:4935  8D 00 DC  STA $DC00
.C:4938  AD 01 DC  LDA $DC01
.C:493b  9D F0 03  STA $03F0,X
.C:493e  CA        DEX
.C:493f  10 F1     BPL $4932
.C:4941  A9 7F     LDA #$7F
.C:4943  8D 00 DC  STA $DC00
.C:4946  A9 00     LDA #$00
.C:4948  8D FF 03  STA $03FF
.C:494b  A2 02     LDX #$02
.C:494d  BC BD 5A  LDY $5ABD,X
.C:4950  B9 F0 03  LDA $03F0,Y
.C:4953  3D BA 5A  AND $5ABA,X
.C:4956  D0 09     BNE $4961
.C:4958  AD FF 03  LDA $03FF
.C:495b  1D B7 5A  ORA $5AB7,X
.C:495e  8D FF 03  STA $03FF
.C:4961  CA        DEX
.C:4962  10 E9     BPL $494D
.C:4964  60        RTS
.C:4965  AD FF 03  LDA $03FF
.C:4968  29 10     AND #$10
.C:496a  F0 0E     BEQ $497A
.C:496c  AD 3E 03  LDA $033E
.C:496f  D0 09     BNE $497A
.C:4971  A2 01     LDX #$01
.C:4973  8E 3E 03  STX $033E
.C:4976  CA        DEX
.C:4977  20 F0 3E  JSR $3EF0
.C:497a  AD FF 03  LDA $03FF
.C:497d  29 08     AND #$08
.C:497f  F0 13     BEQ $4994
.C:4981  AD 40 03  LDA $0340
.C:4984  18        CLC
.C:4985  69 02     ADC #$02
.C:4987  8D 40 03  STA $0340
.C:498a  90 03     BCC $498F
.C:498c  EE 41 03  INC $0341
.C:498f  A9 00     LDA #$00
.C:4991  8D 46 03  STA $0346
.C:4994  AD FF 03  LDA $03FF
.C:4997  29 04     AND #$04
.C:4999  F0 1F     BEQ $49BA
.C:499b  AD 41 03  LDA $0341
.C:499e  D0 07     BNE $49A7
.C:49a0  AD 40 03  LDA $0340
.C:49a3  C9 12     CMP #$12
.C:49a5  90 13     BCC $49BA
.C:49a7  AD 40 03  LDA $0340
.C:49aa  38        SEC
.C:49ab  E9 02     SBC #$02
.C:49ad  8D 40 03  STA $0340
.C:49b0  B0 03     BCS $49B5
.C:49b2  CE 41 03  DEC $0341
.C:49b5  A9 01     LDA #$01
.C:49b7  8D 46 03  STA $0346
.C:49ba  20 06 54  JSR $5406
.C:49bd  A2 20     LDX #$20
.C:49bf  A0 00     LDY #$00
.C:49c1  88        DEY
.C:49c2  D0 FD     BNE $49C1
.C:49c4  CA        DEX
.C:49c5  D0 F8     BNE $49BF
.C:49c7  AD 41 03  LDA $0341
.C:49ca  F0 0A     BEQ $49D6
.C:49cc  AD 40 03  LDA $0340
.C:49cf  C9 1E     CMP #$1E
.C:49d1  90 03     BCC $49D6
.C:49d3  4C 6A 4A  JMP $4A6A
.C:49d6  4C F3 56  JMP $56F3
.C:49d9  4C 1A 49  JMP $491A
.C:49dc  AD 40 03  LDA $0340
.C:49df  18        CLC
.C:49e0  69 18     ADC #$18
.C:49e2  8D 00 D0  STA $D000
.C:49e5  AD 41 03  LDA $0341
.C:49e8  69 00     ADC #$00
.C:49ea  AA        TAX
.C:49eb  AD 10 D0  LDA $D010
.C:49ee  29 FE     AND #$FE
.C:49f0  E0 00     CPX #$00
.C:49f2  F0 02     BEQ $49F6
.C:49f4  09 01     ORA #$01
.C:49f6  8D 10 D0  STA $D010
.C:49f9  A9 75     LDA #$75
.C:49fb  AE 3E 03  LDX $033E
.C:49fe  F0 07     BEQ $4A07
.C:4a00  AE 3F 03  LDX $033F
.C:4a03  38        SEC
.C:4a04  FD 18 6E  SBC $6E18,X
.C:4a07  8D 01 D0  STA $D001
.C:4a0a  A9 05     LDA #$05
.C:4a0c  8D 27 D0  STA $D027
.C:4a0f  A9 00     LDA #$00
.C:4a11  8D 1B D0  STA $D01B
.C:4a14  A9 0F     LDA #$0F
.C:4a16  8D 1C D0  STA $D01C
.C:4a19  A9 50     LDA #$50
.C:4a1b  8D 1D D0  STA $D01D
.C:4a1e  8D 17 D0  STA $D017
.C:4a21  AD 3E 03  LDA $033E
.C:4a24  D0 16     BNE $4A3C
.C:4a26  AD 40 03  LDA $0340
.C:4a29  4A        LSR A
.C:4a2a  29 03     AND #$03
.C:4a2c  AE 46 03  LDX $0346
.C:4a2f  F0 03     BEQ $4A34
.C:4a31  18        CLC
.C:4a32  69 04     ADC #$04
.C:4a34  AA        TAX
.C:4a35  BD 71 66  LDA $6671,X
.C:4a38  20 4C 54  JSR $544C
.C:4a3b  60        RTS
.C:4a3c  AD 3F 03  LDA $033F
.C:4a3f  AE 46 03  LDX $0346
.C:4a42  F0 03     BEQ $4A47
.C:4a44  18        CLC
.C:4a45  69 10     ADC #$10
.C:4a47  AA        TAX
.C:4a48  BD 79 66  LDA $6679,X
.C:4a4b  20 5E 4A  JSR $4A5E
.C:4a4e  EE 3F 03  INC $033F
.C:4a51  AD 3F 03  LDA $033F
.C:4a54  C9 10     CMP #$10
.C:4a56  D0 E3     BNE $4A3B
.C:4a58  A9 00     LDA #$00
.C:4a5a  8D 3E 03  STA $033E
.C:4a5d  60        RTS
.C:4a5e  8D F8 77  STA $77F8
.C:4a61  AD 15 D0  LDA $D015
.C:4a64  09 01     ORA #$01
.C:4a66  8D 15 D0  STA $D015
.C:4a69  60        RTS
.C:4a6a  78        SEI
.C:4a6b  A9 31     LDA #$31
.C:4a6d  8D 14 03  STA $0314
.C:4a70  A9 EA     LDA #$EA
.C:4a72  8D 15 03  STA $0315
.C:4a75  58        CLI
.C:4a76  EA        NOP
.C:4a77  20 98 3E  JSR $3E98
.C:4a7a  20 82 48  JSR $4882
.C:4a7d  AD 48 03  LDA $0348
.C:4a80  C9 05     CMP #$05
.C:4a82  D0 27     BNE $4AAB
.C:4a84  A0 04     LDY #$04
.C:4a86  A2 03     LDX #$03
.C:4a88  20 AE 4A  JSR $4AAE
.C:4a8b  88        DEY
.C:4a8c  10 F8     BPL $4A86
.C:4a8e  20 76 3E  JSR $3E76
.C:4a91  20 82 48  JSR $4882
.C:4a94  A9 02     LDA #$02
.C:4a96  85 60     STA $60
.C:4a98  A2 00     LDX #$00
.C:4a9a  A0 00     LDY #$00
.C:4a9c  88        DEY
.C:4a9d  D0 FD     BNE $4A9C
.C:4a9f  CA        DEX
.C:4aa0  D0 F8     BNE $4A9A
.C:4aa2  C6 60     DEC $60
.C:4aa4  D0 F2     BNE $4A98
.C:4aa6  AD 48 03  LDA $0348
.C:4aa9  D0 D9     BNE $4A84
.C:4aab  4C C1 4A  JMP $4AC1
.C:4aae  FE 49 03  INC $0349,X
.C:4ab1  BD 49 03  LDA $0349,X
.C:4ab4  C9 0A     CMP #$0A
.C:4ab6  D0 08     BNE $4AC0
.C:4ab8  A9 00     LDA #$00
.C:4aba  9D 49 03  STA $0349,X
.C:4abd  CA        DEX
.C:4abe  10 EE     BPL $4AAE
.C:4ac0  60        RTS
.C:4ac1  A9 01     LDA #$01
.C:4ac3  AD 15 D0  LDA $D015
.C:4ac6  20 A7 3E  JSR $3EA7
.C:4ac9  AD 4B 03  LDA $034B
.C:4acc  F0 0E     BEQ $4ADC
.C:4ace  AD 50 03  LDA $0350
.C:4ad1  D0 09     BNE $4ADC
.C:4ad3  EE 50 03  INC $0350
.C:4ad6  EE 51 03  INC $0351
.C:4ad9  20 82 48  JSR $4882
.C:4adc  AD 3D 03  LDA $033D
.C:4adf  29 0F     AND #$0F
.C:4ae1  C9 0F     CMP #$0F
.C:4ae3  D0 03     BNE $4AE8
.C:4ae5  4C D3 55  JMP $55D3
.C:4ae8  AE 3D 03  LDX $033D
.C:4aeb  E8        INX
.C:4aec  E0 30     CPX #$30
.C:4aee  D0 02     BNE $4AF2
.C:4af0  A2 00     LDX #$00
.C:4af2  8E 3D 03  STX $033D
.C:4af5  20 19 42  JSR $4219
.C:4af8  78        SEI
.C:4af9  A9 74     LDA #$74
.C:4afb  8D 14 03  STA $0314
.C:4afe  A9 4B     LDA #$4B
.C:4b00  8D 15 03  STA $0315
.C:4b03  A9 01     LDA #$01
.C:4b05  8D E0 03  STA $03E0
.C:4b08  58        CLI
.C:4b09  A2 27     LDX #$27
.C:4b0b  86 61     STX $61
.C:4b0d  20 18 4B  JSR $4B18
.C:4b10  A6 61     LDX $61
.C:4b12  CA        DEX
.C:4b13  10 F6     BPL $4B0B
.C:4b15  4C 4D 48  JMP $484D
.C:4b18  A2 07     LDX #$07
.C:4b1a  BD 69 66  LDA $6669,X
.C:4b1d  95 62     STA $62,X
.C:4b1f  CA        DEX
.C:4b20  10 F8     BPL $4B1A
.C:4b22  A2 16     LDX #$16
.C:4b24  A0 01     LDY #$01
.C:4b26  E0 04     CPX #$04
.C:4b28  B0 02     BCS $4B2C
.C:4b2a  A0 08     LDY #$08
.C:4b2c  B1 62     LDA ($62),Y
.C:4b2e  48        PHA
.C:4b2f  B1 64     LDA ($64),Y
.C:4b31  88        DEY
.C:4b32  91 64     STA ($64),Y
.C:4b34  68        PLA
.C:4b35  91 62     STA ($62),Y
.C:4b37  C8        INY
.C:4b38  C8        INY
.C:4b39  C0 28     CPY #$28
.C:4b3b  D0 EF     BNE $4B2C
.C:4b3d  A9 27     LDA #$27
.C:4b3f  38        SEC
.C:4b40  E5 61     SBC $61
.C:4b42  A8        TAY
.C:4b43  B1 66     LDA ($66),Y
.C:4b45  48        PHA
.C:4b46  B1 68     LDA ($68),Y
.C:4b48  A0 27     LDY #$27
.C:4b4a  91 64     STA ($64),Y
.C:4b4c  68        PLA
.C:4b4d  91 62     STA ($62),Y
.C:4b4f  A0 06     LDY #$06
.C:4b51  B9 62 00  LDA $0062,Y
.C:4b54  18        CLC
.C:4b55  69 28     ADC #$28
.C:4b57  99 62 00  STA $0062,Y
.C:4b5a  B9 63 00  LDA $0063,Y
.C:4b5d  69 00     ADC #$00
.C:4b5f  99 63 00  STA $0063,Y
.C:4b62  88        DEY
.C:4b63  88        DEY
.C:4b64  10 EB     BPL $4B51
.C:4b66  CA        DEX
.C:4b67  10 BB     BPL $4B24
.C:4b69  A2 31     LDX #$31
.C:4b6b  A0 00     LDY #$00
.C:4b6d  88        DEY
.C:4b6e  D0 FD     BNE $4B6D
.C:4b70  CA        DEX
.C:4b71  D0 F8     BNE $4B6B
.C:4b73  60        RTS
.C:4b74  CE E0 03  DEC $03E0
.C:4b77  F0 03     BEQ $4B7C
.C:4b79  4C 31 EA  JMP $EA31
.C:4b7c  A9 03     LDA #$03
.C:4b7e  8D E0 03  STA $03E0
.C:4b81  AD 40 03  LDA $0340
.C:4b84  38        SEC
.C:4b85  E9 02     SBC #$02
.C:4b87  8D 40 03  STA $0340
.C:4b8a  B0 03     BCS $4B8F
.C:4b8c  CE 41 03  DEC $0341
.C:4b8f  A9 00     LDA #$00
.C:4b91  8D 3E 03  STA $033E
.C:4b94  20 DC 49  JSR $49DC
.C:4b97  AD 41 03  LDA $0341
.C:4b9a  D0 D8     BNE $4B74
.C:4b9c  AD 40 03  LDA $0340
.C:4b9f  C9 12     CMP #$12
.C:4ba1  B0 D1     BCS $4B74
.C:4ba3  78        SEI
.C:4ba4  A9 31     LDA #$31
.C:4ba6  8D 14 03  STA $0314
.C:4ba9  A9 EA     LDA #$EA
.C:4bab  8D 15 03  STA $0315
.C:4bae  58        CLI
.C:4baf  4C 31 EA  JMP $EA31
.C:4bb2  A2 0A     LDX #$0A
.C:4bb4  BD 41 70  LDA $7041,X
.C:4bb7  9D 00 74  STA $7400,X
.C:4bba  BD 69 70  LDA $7069,X
.C:4bbd  9D 28 74  STA $7428,X
.C:4bc0  CA        DEX
.C:4bc1  10 F1     BPL $4BB4
.C:4bc3  AD 48 03  LDA $0348
.C:4bc6  60        RTS
.C:4bc7  BD 00 75  LDA $7500,X
.C:4bca  9D D0 02  STA $02D0,X
.C:4bcd  BD 00 D9  LDA $D900,X
.C:4bd0  9D E0 02  STA $02E0,X
.C:4bd3  BD F1 66  LDA $66F1,X
.C:4bd6  60        RTS
.C:4bd7  BD E0 02  LDA $02E0,X
.C:4bda  9D 00 D9  STA $D900,X
.C:4bdd  BD D0 02  LDA $02D0,X
.C:4be0  9D 00 75  STA $7500,X
.C:4be3  60        RTS
.C:4be4  78        SEI
.C:4be5  A9 F1     LDA #$F1
.C:4be7  8D 14 03  STA $0314
.C:4bea  A9 4B     LDA #$4B
.C:4bec  20 EA 3E  JSR $3EEA
.C:4bef  58        CLI
.C:4bf0  60        RTS
.C:4bf1  AE 3D 03  LDX $033D
.C:4bf4  BD 11 70  LDA $7011,X
.C:4bf7  29 01     AND #$01
.C:4bf9  D0 03     BNE $4BFE
.C:4bfb  4C 59 4D  JMP $4D59
.C:4bfe  AD C1 75  LDA $75C1
.C:4c01  C9 3E     CMP #$3E
.C:4c03  D0 03     BNE $4C08
.C:4c05  4C 6D 4C  JMP $4C6D
.C:4c08  CE 61 03  DEC $0361
.C:4c0b  D0 F8     BNE $4C05
.C:4c0d  A9 0A     LDA #$0A
.C:4c0f  AE 60 03  LDX $0360
.C:4c12  E0 03     CPX #$03
.C:4c14  D0 02     BNE $4C18
.C:4c16  A9 80     LDA #$80
.C:4c18  8D 61 03  STA $0361
.C:4c1b  E8        INX
.C:4c1c  8A        TXA
.C:4c1d  29 03     AND #$03
.C:4c1f  8D 60 03  STA $0360
.C:4c22  F0 34     BEQ $4C58
.C:4c24  C9 02     CMP #$02
.C:4c26  F0 1B     BEQ $4C43
.C:4c28  A2 14     LDX #$14
.C:4c2a  BC 54 66  LDY $6654,X
.C:4c2d  BD 2A 66  LDA $662A,X
.C:4c30  99 4A 75  STA $754A,Y
.C:4c33  A9 0A     LDA #$0A
.C:4c35  99 4A D9  STA $D94A,Y
.C:4c38  CA        DEX
.C:4c39  10 EF     BPL $4C2A
.C:4c3b  A9 0B     LDA #$0B
.C:4c3d  8D C3 D9  STA $D9C3
.C:4c40  4C 05 4C  JMP $4C05
.C:4c43  A2 14     LDX #$14
.C:4c45  BC 54 66  LDY $6654,X
.C:4c48  BD 11 66  LDA $6611,X
.C:4c4b  99 4A 75  STA $754A,Y
.C:4c4e  A9 0A     LDA #$0A
.C:4c50  99 4A D9  STA $D94A,Y
.C:4c53  CA        DEX
.C:4c54  10 EF     BPL $4C45
.C:4c56  30 E3     BMI $4C3B
.C:4c58  A2 14     LDX #$14
.C:4c5a  BC 54 66  LDY $6654,X
.C:4c5d  BD 3F 66  LDA $663F,X
.C:4c60  99 4A 75  STA $754A,Y
.C:4c63  A9 0A     LDA #$0A
.C:4c65  99 4A D9  STA $D94A,Y
.C:4c68  CA        DEX
.C:4c69  10 EF     BPL $4C5A
.C:4c6b  30 CE     BMI $4C3B
.C:4c6d  AD CA 75  LDA $75CA
.C:4c70  C9 3E     CMP #$3E
.C:4c72  D0 03     BNE $4C77
.C:4c74  4C DC 4C  JMP $4CDC
.C:4c77  CE 63 03  DEC $0363
.C:4c7a  D0 F8     BNE $4C74
.C:4c7c  A9 0A     LDA #$0A
.C:4c7e  AE 62 03  LDX $0362
.C:4c81  E0 03     CPX #$03
.C:4c83  D0 02     BNE $4C87
.C:4c85  A9 80     LDA #$80
.C:4c87  8D 63 03  STA $0363
.C:4c8a  E8        INX
.C:4c8b  8A        TXA
.C:4c8c  29 03     AND #$03
.C:4c8e  8D 62 03  STA $0362
.C:4c91  F0 34     BEQ $4CC7
.C:4c93  C9 02     CMP #$02
.C:4c95  F0 1B     BEQ $4CB2
.C:4c97  A2 14     LDX #$14
.C:4c99  BC 54 66  LDY $6654,X
.C:4c9c  BD 2A 66  LDA $662A,X
.C:4c9f  99 53 75  STA $7553,Y
.C:4ca2  A9 0A     LDA #$0A
.C:4ca4  99 53 D9  STA $D953,Y
.C:4ca7  CA        DEX
.C:4ca8  10 EF     BPL $4C99
.C:4caa  A9 0B     LDA #$0B
.C:4cac  8D CC D9  STA $D9CC
.C:4caf  4C 74 4C  JMP $4C74
.C:4cb2  A2 14     LDX #$14
.C:4cb4  BC 54 66  LDY $6654,X
.C:4cb7  BD 11 66  LDA $6611,X
.C:4cba  99 53 75  STA $7553,Y
.C:4cbd  A9 0A     LDA #$0A
.C:4cbf  99 53 D9  STA $D953,Y
.C:4cc2  CA        DEX
.C:4cc3  10 EF     BPL $4CB4
.C:4cc5  30 E3     BMI $4CAA
.C:4cc7  A2 14     LDX #$14
.C:4cc9  BC 54 66  LDY $6654,X
.C:4ccc  BD 3F 66  LDA $663F,X
.C:4ccf  99 53 75  STA $7553,Y
.C:4cd2  A9 0A     LDA #$0A
.C:4cd4  99 53 D9  STA $D953,Y
.C:4cd7  CA        DEX
.C:4cd8  10 EF     BPL $4CC9
.C:4cda  30 CE     BMI $4CAA
.C:4cdc  AD D3 75  LDA $75D3
.C:4cdf  C9 3E     CMP #$3E
.C:4ce1  D0 03     BNE $4CE6
.C:4ce3  4C FB 4B  JMP $4BFB
.C:4ce6  CE 65 03  DEC $0365
.C:4ce9  D0 F8     BNE $4CE3
.C:4ceb  A9 0A     LDA #$0A
.C:4ced  AE 64 03  LDX $0364
.C:4cf0  E0 03     CPX #$03
.C:4cf2  D0 02     BNE $4CF6
.C:4cf4  A9 80     LDA #$80
.C:4cf6  8D 65 03  STA $0365
.C:4cf9  E8        INX
.C:4cfa  8A        TXA
.C:4cfb  29 03     AND #$03
.C:4cfd  8D 64 03  STA $0364
.C:4d00  F0 34     BEQ $4D36
.C:4d02  C9 02     CMP #$02
.C:4d04  F0 1B     BEQ $4D21
.C:4d06  A2 14     LDX #$14
.C:4d08  BC 54 66  LDY $6654,X
.C:4d0b  BD 2A 66  LDA $662A,X
.C:4d0e  99 5C 75  STA $755C,Y
.C:4d11  A9 0A     LDA #$0A
.C:4d13  99 5C D9  STA $D95C,Y
.C:4d16  CA        DEX
.C:4d17  10 EF     BPL $4D08
.C:4d19  A9 0B     LDA #$0B
.C:4d1b  8D D5 D9  STA $D9D5
.C:4d1e  4C E3 4C  JMP $4CE3
.C:4d21  A2 14     LDX #$14
.C:4d23  BC 54 66  LDY $6654,X
.C:4d26  BD 11 66  LDA $6611,X
.C:4d29  99 5C 75  STA $755C,Y
.C:4d2c  A9 0A     LDA #$0A
.C:4d2e  99 5C D9  STA $D95C,Y
.C:4d31  CA        DEX
.C:4d32  10 EF     BPL $4D23
.C:4d34  30 E3     BMI $4D19
.C:4d36  A2 14     LDX #$14
.C:4d38  BC 54 66  LDY $6654,X
.C:4d3b  BD 3F 66  LDA $663F,X
.C:4d3e  99 5C 75  STA $755C,Y
.C:4d41  A9 0A     LDA #$0A
.C:4d43  99 5C D9  STA $D95C,Y
.C:4d46  CA        DEX
.C:4d47  10 EF     BPL $4D38
.C:4d49  30 CE     BMI $4D19
.C:4d4b  A2 10     LDX #$10
.C:4d4d  BD 00 66  LDA $6600,X
.C:4d50  9D 60 03  STA $0360,X
.C:4d53  CA        DEX
.C:4d54  10 F7     BPL $4D4D
.C:4d56  4C E4 4B  JMP $4BE4
.C:4d59  AE 3D 03  LDX $033D
.C:4d5c  BD E1 6F  LDA $6FE1,X
.C:4d5f  29 02     AND #$02
.C:4d61  D0 03     BNE $4D66
.C:4d63  4C CF 4D  JMP $4DCF
.C:4d66  A2 02     LDX #$02
.C:4d68  AD 69 03  LDA $0369
.C:4d6b  D0 03     BNE $4D70
.C:4d6d  CE 6A 03  DEC $036A
.C:4d70  CE 69 03  DEC $0369
.C:4d73  CA        DEX
.C:4d74  D0 F2     BNE $4D68
.C:4d76  20 C7 4D  JSR $4DC7
.C:4d79  AD 6A 03  LDA $036A
.C:4d7c  0D 69 03  ORA $0369
.C:4d7f  D0 E2     BNE $4D63
.C:4d81  20 2A 3E  JSR $3E2A
.C:4d84  A9 01     LDA #$01
.C:4d86  8D 6A 03  STA $036A
.C:4d89  A9 58     LDA #$58
.C:4d8b  8D 69 03  STA $0369
.C:4d8e  4C 63 4D  JMP $4D63
.C:4d91  A9 04     LDA #$04
.C:4d93  8D 29 D0  STA $D029
.C:4d96  AD 68 03  LDA $0368
.C:4d99  8D 05 D0  STA $D005
.C:4d9c  AD 69 03  LDA $0369
.C:4d9f  8D 04 D0  STA $D004
.C:4da2  AD 10 D0  LDA $D010
.C:4da5  29 FB     AND #$FB
.C:4da7  AE 6A 03  LDX $036A
.C:4daa  F0 02     BEQ $4DAE
.C:4dac  09 04     ORA #$04
.C:4dae  8D 10 D0  STA $D010
.C:4db1  AD 69 03  LDA $0369
.C:4db4  4A        LSR A
.C:4db5  4A        LSR A
.C:4db6  29 03     AND #$03
.C:4db8  18        CLC
.C:4db9  69 AA     ADC #$AA
.C:4dbb  8D FA 77  STA $77FA
.C:4dbe  AD 15 D0  LDA $D015
.C:4dc1  09 04     ORA #$04
.C:4dc3  8D 15 D0  STA $D015
.C:4dc6  60        RTS
.C:4dc7  A9 58     LDA #$58
.C:4dc9  8D 68 03  STA $0368
.C:4dcc  4C 91 4D  JMP $4D91
.C:4dcf  AE 3D 03  LDX $033D
.C:4dd2  BD E1 6F  LDA $6FE1,X
.C:4dd5  29 04     AND #$04
.C:4dd7  D0 03     BNE $4DDC
.C:4dd9  4C 39 4E  JMP $4E39
.C:4ddc  A2 02     LDX #$02
.C:4dde  EE 69 03  INC $0369
.C:4de1  D0 03     BNE $4DE6
.C:4de3  EE 6A 03  INC $036A
.C:4de6  CA        DEX
.C:4de7  D0 F5     BNE $4DDE
.C:4de9  A9 75     LDA #$75
.C:4deb  8D 68 03  STA $0368
.C:4dee  20 0B 4E  JSR $4E0B
.C:4df1  AD 6A 03  LDA $036A
.C:4df4  F0 E3     BEQ $4DD9
.C:4df6  AD 69 03  LDA $0369
.C:4df9  C9 58     CMP #$58
.C:4dfb  90 DC     BCC $4DD9
.C:4dfd  20 2A 3E  JSR $3E2A
.C:4e00  A9 00     LDA #$00
.C:4e02  8D 69 03  STA $0369
.C:4e05  8D 6A 03  STA $036A
.C:4e08  4C D9 4D  JMP $4DD9
.C:4e0b  A9 04     LDA #$04
.C:4e0d  8D 29 D0  STA $D029
.C:4e10  AD 68 03  LDA $0368
.C:4e13  8D 05 D0  STA $D005
.C:4e16  AD 69 03  LDA $0369
.C:4e19  8D 04 D0  STA $D004
.C:4e1c  AD 10 D0  LDA $D010
.C:4e1f  29 FB     AND #$FB
.C:4e21  AE 6A 03  LDX $036A
.C:4e24  F0 02     BEQ $4E28
.C:4e26  09 04     ORA #$04
.C:4e28  8D 10 D0  STA $D010
.C:4e2b  A9 A8     LDA #$A8
.C:4e2d  8D FA 77  STA $77FA
.C:4e30  AD 15 D0  LDA $D015
.C:4e33  09 04     ORA #$04
.C:4e35  8D 15 D0  STA $D015
.C:4e38  60        RTS
.C:4e39  AE 3D 03  LDX $033D
.C:4e3c  BD E1 6F  LDA $6FE1,X
.C:4e3f  29 08     AND #$08
.C:4e41  D0 03     BNE $4E46
.C:4e43  4C 76 4E  JMP $4E76
.C:4e46  A2 02     LDX #$02
.C:4e48  AD 69 03  LDA $0369
.C:4e4b  D0 03     BNE $4E50
.C:4e4d  CE 6A 03  DEC $036A
.C:4e50  CE 69 03  DEC $0369
.C:4e53  CA        DEX
.C:4e54  D0 F2     BNE $4E48
.C:4e56  A9 75     LDA #$75
.C:4e58  8D 68 03  STA $0368
.C:4e5b  20 91 4D  JSR $4D91
.C:4e5e  AD 6A 03  LDA $036A
.C:4e61  0D 69 03  ORA $0369
.C:4e64  D0 DD     BNE $4E43
.C:4e66  20 2A 3E  JSR $3E2A
.C:4e69  A9 58     LDA #$58
.C:4e6b  8D 69 03  STA $0369
.C:4e6e  A9 01     LDA #$01
.C:4e70  8D 6A 03  STA $036A
.C:4e73  4C 43 4E  JMP $4E43
.C:4e76  AE 3D 03  LDX $033D
.C:4e79  BD E1 6F  LDA $6FE1,X
.C:4e7c  29 10     AND #$10
.C:4e7e  D0 03     BNE $4E83
.C:4e80  4C 87 4F  JMP $4F87
.C:4e83  A9 04     LDA #$04
.C:4e85  8D 29 D0  STA $D029
.C:4e88  8D 2A D0  STA $D02A
.C:4e8b  A2 02     LDX #$02
.C:4e8d  AD 69 03  LDA $0369
.C:4e90  D0 03     BNE $4E95
.C:4e92  CE 6A 03  DEC $036A
.C:4e95  CE 69 03  DEC $0369
.C:4e98  CA        DEX
.C:4e99  D0 F2     BNE $4E8D
.C:4e9b  CE 6E 03  DEC $036E
.C:4e9e  D0 15     BNE $4EB5
.C:4ea0  A9 01     LDA #$01
.C:4ea2  8D 6E 03  STA $036E
.C:4ea5  A2 02     LDX #$02
.C:4ea7  AD 6C 03  LDA $036C
.C:4eaa  D0 03     BNE $4EAF
.C:4eac  CE 6D 03  DEC $036D
.C:4eaf  CE 6C 03  DEC $036C
.C:4eb2  CA        DEX
.C:4eb3  D0 F2     BNE $4EA7
.C:4eb5  AD 68 03  LDA $0368
.C:4eb8  8D 05 D0  STA $D005
.C:4ebb  AD 69 03  LDA $0369
.C:4ebe  8D 04 D0  STA $D004
.C:4ec1  AD 6B 03  LDA $036B
.C:4ec4  8D 07 D0  STA $D007
.C:4ec7  AD 6C 03  LDA $036C
.C:4eca  8D 06 D0  STA $D006
.C:4ecd  AD 10 D0  LDA $D010
.C:4ed0  29 F3     AND #$F3
.C:4ed2  AE 6A 03  LDX $036A
.C:4ed5  F0 02     BEQ $4ED9
.C:4ed7  09 04     ORA #$04
.C:4ed9  AE 6D 03  LDX $036D
.C:4edc  F0 02     BEQ $4EE0
.C:4ede  09 08     ORA #$08
.C:4ee0  8D 10 D0  STA $D010
.C:4ee3  AD 15 D0  LDA $D015
.C:4ee6  09 0C     ORA #$0C
.C:4ee8  8D 15 D0  STA $D015
.C:4eeb  A9 A9     LDA #$A9
.C:4eed  8D FA 77  STA $77FA
.C:4ef0  8D FB 77  STA $77FB
.C:4ef3  AD 69 03  LDA $0369
.C:4ef6  0D 6A 03  ORA $036A
.C:4ef9  D0 17     BNE $4F12
.C:4efb  20 68 3E  JSR $3E68
.C:4efe  A2 58     LDX #$58
.C:4f00  4A        LSR A
.C:4f01  90 02     BCC $4F05
.C:4f03  A2 75     LDX #$75
.C:4f05  8E 68 03  STX $0368
.C:4f08  A9 56     LDA #$56
.C:4f0a  8D 69 03  STA $0369
.C:4f0d  A9 01     LDA #$01
.C:4f0f  8D 6A 03  STA $036A
.C:4f12  AD 6D 03  LDA $036D
.C:4f15  0D 6C 03  ORA $036C
.C:4f18  D0 17     BNE $4F31
.C:4f1a  20 68 3E  JSR $3E68
.C:4f1d  A2 58     LDX #$58
.C:4f1f  4A        LSR A
.C:4f20  90 02     BCC $4F24
.C:4f22  A2 75     LDX #$75
.C:4f24  8E 6B 03  STX $036B
.C:4f27  A9 56     LDA #$56
.C:4f29  8D 6C 03  STA $036C
.C:4f2c  A9 01     LDA #$01
.C:4f2e  8D 6D 03  STA $036D
.C:4f31  4C 80 4E  JMP $4E80
.C:4f34  A9 05     LDA #$05
.C:4f36  8D E5 03  STA $03E5
.C:4f39  A9 E5     LDA #$E5
.C:4f3b  8D E4 03  STA $03E4
.C:4f3e  A9 00     LDA #$00
.C:4f40  8D E7 03  STA $03E7
.C:4f43  8D E6 03  STA $03E6
.C:4f46  A2 10     LDX #$10
.C:4f48  4E E5 03  LSR $03E5
.C:4f4b  6E E4 03  ROR $03E4
.C:4f4e  90 13     BCC $4F63
.C:4f50  AD E6 03  LDA $03E6
.C:4f53  18        CLC
.C:4f54  6D E2 03  ADC $03E2
.C:4f57  8D E6 03  STA $03E6
.C:4f5a  AD E7 03  LDA $03E7
.C:4f5d  6D E3 03  ADC $03E3
.C:4f60  8D E7 03  STA $03E7
.C:4f63  0E E2 03  ASL $03E2
.C:4f66  2E E3 03  ROL $03E3
.C:4f69  CA        DEX
.C:4f6a  D0 DC     BNE $4F48
.C:4f6c  AD E6 03  LDA $03E6
.C:4f6f  18        CLC
.C:4f70  69 29     ADC #$29
.C:4f72  8D E6 03  STA $03E6
.C:4f75  90 03     BCC $4F7A
.C:4f77  EE E7 03  INC $03E7
.C:4f7a  AD E6 03  LDA $03E6
.C:4f7d  8D E2 03  STA $03E2
.C:4f80  AD E7 03  LDA $03E7
.C:4f83  8D E3 03  STA $03E3
.C:4f86  60        RTS
.C:4f87  AE 3D 03  LDX $033D
.C:4f8a  BD E1 6F  LDA $6FE1,X
.C:4f8d  29 20     AND #$20
.C:4f8f  D0 03     BNE $4F94
.C:4f91  4C 43 50  JMP $5043
.C:4f94  A9 04     LDA #$04
.C:4f96  8D 29 D0  STA $D029
.C:4f99  8D 2A D0  STA $D02A
.C:4f9c  A2 02     LDX #$02
.C:4f9e  EE 69 03  INC $0369
.C:4fa1  D0 03     BNE $4FA6
.C:4fa3  EE 6A 03  INC $036A
.C:4fa6  CA        DEX
.C:4fa7  D0 F5     BNE $4F9E
.C:4fa9  CE 6E 03  DEC $036E
.C:4fac  D0 12     BNE $4FC0
.C:4fae  A9 01     LDA #$01
.C:4fb0  8D 6E 03  STA $036E
.C:4fb3  A2 02     LDX #$02
.C:4fb5  EE 6C 03  INC $036C
.C:4fb8  D0 03     BNE $4FBD
.C:4fba  EE 6D 03  INC $036D
.C:4fbd  CA        DEX
.C:4fbe  D0 F5     BNE $4FB5
.C:4fc0  AD 68 03  LDA $0368
.C:4fc3  8D 05 D0  STA $D005
.C:4fc6  AD 69 03  LDA $0369
.C:4fc9  8D 04 D0  STA $D004
.C:4fcc  AD 6B 03  LDA $036B
.C:4fcf  8D 07 D0  STA $D007
.C:4fd2  AD 6C 03  LDA $036C
.C:4fd5  8D 06 D0  STA $D006
.C:4fd8  AD 10 D0  LDA $D010
.C:4fdb  29 F3     AND #$F3
.C:4fdd  AE 6A 03  LDX $036A
.C:4fe0  F0 02     BEQ $4FE4
.C:4fe2  09 04     ORA #$04
.C:4fe4  AE 6D 03  LDX $036D
.C:4fe7  F0 02     BEQ $4FEB
.C:4fe9  09 08     ORA #$08
.C:4feb  8D 10 D0  STA $D010
.C:4fee  AD 15 D0  LDA $D015
.C:4ff1  09 0C     ORA #$0C
.C:4ff3  8D 15 D0  STA $D015
.C:4ff6  A9 A8     LDA #$A8
.C:4ff8  8D FA 77  STA $77FA
.C:4ffb  8D FB 77  STA $77FB
.C:4ffe  AD 6A 03  LDA $036A
.C:5001  F0 1C     BEQ $501F
.C:5003  AD 69 03  LDA $0369
.C:5006  C9 58     CMP #$58
.C:5008  90 15     BCC $501F
.C:500a  20 68 3E  JSR $3E68
.C:500d  A2 58     LDX #$58
.C:500f  4A        LSR A
.C:5010  90 02     BCC $5014
.C:5012  A2 75     LDX #$75
.C:5014  8E 68 03  STX $0368
.C:5017  A9 00     LDA #$00
.C:5019  8D 69 03  STA $0369
.C:501c  8D 6A 03  STA $036A
.C:501f  AD 6D 03  LDA $036D
.C:5022  F0 1C     BEQ $5040
.C:5024  AD 6C 03  LDA $036C
.C:5027  C9 58     CMP #$58
.C:5029  90 15     BCC $5040
.C:502b  20 68 3E  JSR $3E68
.C:502e  A2 58     LDX #$58
.C:5030  4A        LSR A
.C:5031  90 02     BCC $5035
.C:5033  A2 75     LDX #$75
.C:5035  8E 6B 03  STX $036B
.C:5038  A9 00     LDA #$00
.C:503a  8D 6C 03  STA $036C
.C:503d  8D 6D 03  STA $036D
.C:5040  4C 91 4F  JMP $4F91
.C:5043  AE 3D 03  LDX $033D
.C:5046  BD E1 6F  LDA $6FE1,X
.C:5049  29 40     AND #$40
.C:504b  D0 03     BNE $5050
.C:504d  4C 4D 51  JMP $514D
.C:5050  AD 6F 03  LDA $036F
.C:5053  30 11     BMI $5066
.C:5055  AD 69 03  LDA $0369
.C:5058  18        CLC
.C:5059  69 02     ADC #$02
.C:505b  8D 69 03  STA $0369
.C:505e  90 03     BCC $5063
.C:5060  EE 6A 03  INC $036A
.C:5063  4C 74 50  JMP $5074
.C:5066  AD 69 03  LDA $0369
.C:5069  38        SEC
.C:506a  E9 02     SBC #$02
.C:506c  8D 69 03  STA $0369
.C:506f  B0 03     BCS $5074
.C:5071  CE 6A 03  DEC $036A
.C:5074  CE 6E 03  DEC $036E
.C:5077  D0 29     BNE $50A2
.C:5079  A9 01     LDA #$01
.C:507b  8D 6E 03  STA $036E
.C:507e  AD 70 03  LDA $0370
.C:5081  30 11     BMI $5094
.C:5083  AD 6C 03  LDA $036C
.C:5086  18        CLC
.C:5087  69 02     ADC #$02
.C:5089  8D 6C 03  STA $036C
.C:508c  90 03     BCC $5091
.C:508e  EE 6D 03  INC $036D
.C:5091  4C A2 50  JMP $50A2
.C:5094  AD 6C 03  LDA $036C
.C:5097  38        SEC
.C:5098  E9 02     SBC #$02
.C:509a  8D 6C 03  STA $036C
.C:509d  B0 03     BCS $50A2
.C:509f  CE 6D 03  DEC $036D
.C:50a2  A9 04     LDA #$04
.C:50a4  8D 29 D0  STA $D029
.C:50a7  8D 2A D0  STA $D02A
.C:50aa  AD 69 03  LDA $0369
.C:50ad  8D 04 D0  STA $D004
.C:50b0  A9 75     LDA #$75
.C:50b2  8D 05 D0  STA $D005
.C:50b5  8D 07 D0  STA $D007
.C:50b8  AD 6C 03  LDA $036C
.C:50bb  8D 06 D0  STA $D006
.C:50be  AD 10 D0  LDA $D010
.C:50c1  29 F3     AND #$F3
.C:50c3  AE 6A 03  LDX $036A
.C:50c6  F0 02     BEQ $50CA
.C:50c8  09 04     ORA #$04
.C:50ca  AE 6D 03  LDX $036D
.C:50cd  F0 02     BEQ $50D1
.C:50cf  09 08     ORA #$08
.C:50d1  8D 10 D0  STA $D010
.C:50d4  AD 69 03  LDA $0369
.C:50d7  4A        LSR A
.C:50d8  4A        LSR A
.C:50d9  29 03     AND #$03
.C:50db  18        CLC
.C:50dc  69 AA     ADC #$AA
.C:50de  8D FA 77  STA $77FA
.C:50e1  AD 6C 03  LDA $036C
.C:50e4  4A        LSR A
.C:50e5  4A        LSR A
.C:50e6  29 03     AND #$03
.C:50e8  18        CLC
.C:50e9  69 AA     ADC #$AA
.C:50eb  8D FB 77  STA $77FB
.C:50ee  AD 15 D0  LDA $D015
.C:50f1  09 0C     ORA #$0C
.C:50f3  8D 15 D0  STA $D015
.C:50f6  AD 69 03  LDA $0369
.C:50f9  0D 6A 03  ORA $036A
.C:50fc  F0 0C     BEQ $510A
.C:50fe  AD 6A 03  LDA $036A
.C:5101  F0 13     BEQ $5116
.C:5103  AD 69 03  LDA $0369
.C:5106  C9 58     CMP #$58
.C:5108  90 0C     BCC $5116
.C:510a  20 39 51  JSR $5139
.C:510d  8E 69 03  STX $0369
.C:5110  8C 6A 03  STY $036A
.C:5113  8D 6F 03  STA $036F
.C:5116  AD 6C 03  LDA $036C
.C:5119  0D 6D 03  ORA $036D
.C:511c  F0 0C     BEQ $512A
.C:511e  AD 6D 03  LDA $036D
.C:5121  F0 13     BEQ $5136
.C:5123  AD 6C 03  LDA $036C
.C:5126  C9 58     CMP #$58
.C:5128  90 0C     BCC $5136
.C:512a  20 39 51  JSR $5139
.C:512d  8E 6C 03  STX $036C
.C:5130  8C 6D 03  STY $036D
.C:5133  8D 70 03  STA $0370
.C:5136  4C 4D 50  JMP $504D
.C:5139  20 68 3E  JSR $3E68
.C:513c  4A        LSR A
.C:513d  90 07     BCC $5146
.C:513f  A2 00     LDX #$00
.C:5141  A0 00     LDY #$00
.C:5143  A9 02     LDA #$02
.C:5145  60        RTS
.C:5146  A2 56     LDX #$56
.C:5148  A0 01     LDY #$01
.C:514a  A9 FE     LDA #$FE
.C:514c  60        RTS
.C:514d  AE 3D 03  LDX $033D
.C:5150  BD E1 6F  LDA $6FE1,X
.C:5153  29 80     AND #$80
.C:5155  D0 03     BNE $515A
.C:5157  4C 5F 52  JMP $525F
.C:515a  A9 04     LDA #$04
.C:515c  8D 29 D0  STA $D029
.C:515f  8D 2A D0  STA $D02A
.C:5162  AD 68 03  LDA $0368
.C:5165  C9 75     CMP #$75
.C:5167  D0 11     BNE $517A
.C:5169  AD 69 03  LDA $0369
.C:516c  38        SEC
.C:516d  E9 02     SBC #$02
.C:516f  8D 69 03  STA $0369
.C:5172  B0 03     BCS $5177
.C:5174  CE 6A 03  DEC $036A
.C:5177  4C 88 51  JMP $5188
.C:517a  AD 69 03  LDA $0369
.C:517d  18        CLC
.C:517e  69 02     ADC #$02
.C:5180  8D 69 03  STA $0369
.C:5183  90 03     BCC $5188
.C:5185  EE 6A 03  INC $036A
.C:5188  CE 6E 03  DEC $036E
.C:518b  D0 2B     BNE $51B8
.C:518d  A9 01     LDA #$01
.C:518f  8D 6E 03  STA $036E
.C:5192  AD 6B 03  LDA $036B
.C:5195  C9 75     CMP #$75
.C:5197  D0 11     BNE $51AA
.C:5199  AD 6C 03  LDA $036C
.C:519c  38        SEC
.C:519d  E9 02     SBC #$02
.C:519f  8D 6C 03  STA $036C
.C:51a2  B0 03     BCS $51A7
.C:51a4  CE 6D 03  DEC $036D
.C:51a7  4C B8 51  JMP $51B8
.C:51aa  AD 6C 03  LDA $036C
.C:51ad  18        CLC
.C:51ae  69 02     ADC #$02
.C:51b0  8D 6C 03  STA $036C
.C:51b3  90 03     BCC $51B8
.C:51b5  EE 6D 03  INC $036D
.C:51b8  AD 68 03  LDA $0368
.C:51bb  8D 05 D0  STA $D005
.C:51be  AD 69 03  LDA $0369
.C:51c1  8D 04 D0  STA $D004
.C:51c4  AD 6C 03  LDA $036C
.C:51c7  8D 06 D0  STA $D006
.C:51ca  AD 6B 03  LDA $036B
.C:51cd  8D 07 D0  STA $D007
.C:51d0  AD 10 D0  LDA $D010
.C:51d3  29 F3     AND #$F3
.C:51d5  AE 6A 03  LDX $036A
.C:51d8  F0 02     BEQ $51DC
.C:51da  09 04     ORA #$04
.C:51dc  AE 6D 03  LDX $036D
.C:51df  F0 02     BEQ $51E3
.C:51e1  09 08     ORA #$08
.C:51e3  8D 10 D0  STA $D010
.C:51e6  A2 A8     LDX #$A8
.C:51e8  AD 68 03  LDA $0368
.C:51eb  C9 75     CMP #$75
.C:51ed  D0 01     BNE $51F0
.C:51ef  E8        INX
.C:51f0  8E FA 77  STX $77FA
.C:51f3  A2 A8     LDX #$A8
.C:51f5  AD 6B 03  LDA $036B
.C:51f8  C9 75     CMP #$75
.C:51fa  D0 01     BNE $51FD
.C:51fc  E8        INX
.C:51fd  8E FB 77  STX $77FB
.C:5200  AD 15 D0  LDA $D015
.C:5203  09 0C     ORA #$0C
.C:5205  8D 15 D0  STA $D015
.C:5208  AD 69 03  LDA $0369
.C:520b  0D 6A 03  ORA $036A
.C:520e  F0 0C     BEQ $521C
.C:5210  AD 6A 03  LDA $036A
.C:5213  F0 13     BEQ $5228
.C:5215  AD 69 03  LDA $0369
.C:5218  C9 58     CMP #$58
.C:521a  90 0C     BCC $5228
.C:521c  20 4B 52  JSR $524B
.C:521f  8E 69 03  STX $0369
.C:5222  8C 6A 03  STY $036A
.C:5225  8D 68 03  STA $0368
.C:5228  AD 6C 03  LDA $036C
.C:522b  0D 6D 03  ORA $036D
.C:522e  F0 0C     BEQ $523C
.C:5230  AD 6D 03  LDA $036D
.C:5233  F0 13     BEQ $5248
.C:5235  AD 6C 03  LDA $036C
.C:5238  C9 58     CMP #$58
.C:523a  90 0C     BCC $5248
.C:523c  20 4B 52  JSR $524B
.C:523f  8E 6C 03  STX $036C
.C:5242  8C 6D 03  STY $036D
.C:5245  8D 6B 03  STA $036B
.C:5248  4C 57 51  JMP $5157
.C:524b  20 68 3E  JSR $3E68
.C:524e  4A        LSR A
.C:524f  90 07     BCC $5258
.C:5251  A2 00     LDX #$00
.C:5253  A0 00     LDY #$00
.C:5255  A9 58     LDA #$58
.C:5257  60        RTS
.C:5258  A2 56     LDX #$56
.C:525a  A0 01     LDY #$01
.C:525c  A9 75     LDA #$75
.C:525e  60        RTS
.C:525f  A9 02     LDA #$02
.C:5261  8D 2E D0  STA $D02E
.C:5264  A9 F0     LDA #$F0
.C:5266  8D 0E D0  STA $D00E
.C:5269  A9 4A     LDA #$4A
.C:526b  8D 0F D0  STA $D00F
.C:526e  AD 10 D0  LDA $D010
.C:5271  29 7F     AND #$7F
.C:5273  8D 10 D0  STA $D010
.C:5276  AD 3D 03  LDA $033D
.C:5279  29 0F     AND #$0F
.C:527b  AA        TAX
.C:527c  AD 15 D0  LDA $D015
.C:527f  29 7F     AND #$7F
.C:5281  E0 0F     CPX #$0F
.C:5283  D0 02     BNE $5287
.C:5285  09 80     ORA #$80
.C:5287  8D 15 D0  STA $D015
.C:528a  CE 71 03  DEC $0371
.C:528d  F0 03     BEQ $5292
.C:528f  4C B4 52  JMP $52B4
.C:5292  A9 40     LDA #$40
.C:5294  8D 71 03  STA $0371
.C:5297  AD FF 77  LDA $77FF
.C:529a  49 01     EOR #$01
.C:529c  29 01     AND #$01
.C:529e  09 90     ORA #$90
.C:52a0  8D FF 77  STA $77FF
.C:52a3  A2 07     LDX #$07
.C:52a5  BD 90 7B  LDA $7B90,X
.C:52a8  5D 98 7B  EOR $7B98,X
.C:52ab  9D 90 7B  STA $7B90,X
.C:52ae  CA        DEX
.C:52af  10 F4     BPL $52A5
.C:52b1  4C 8F 52  JMP $528F
.C:52b4  CE 75 03  DEC $0375
.C:52b7  F0 03     BEQ $52BC
.C:52b9  4C 9E 53  JMP $539E
.C:52bc  AD 3D 03  LDA $033D
.C:52bf  4A        LSR A
.C:52c0  4A        LSR A
.C:52c1  4A        LSR A
.C:52c2  4A        LSR A
.C:52c3  AA        TAX
.C:52c4  BD C0 6D  LDA $6DC0,X
.C:52c7  8D 75 03  STA $0375
.C:52ca  AD 72 03  LDA $0372
.C:52cd  C9 75     CMP #$75
.C:52cf  F0 1B     BEQ $52EC
.C:52d1  AD 76 03  LDA $0376
.C:52d4  49 01     EOR #$01
.C:52d6  8D 76 03  STA $0376
.C:52d9  29 01     AND #$01
.C:52db  D0 09     BNE $52E6
.C:52dd  AD 72 03  LDA $0372
.C:52e0  38        SEC
.C:52e1  E9 08     SBC #$08
.C:52e3  8D 72 03  STA $0372
.C:52e6  20 0B 53  JSR $530B
.C:52e9  4C B9 52  JMP $52B9
.C:52ec  AD 76 03  LDA $0376
.C:52ef  49 01     EOR #$01
.C:52f1  09 02     ORA #$02
.C:52f3  8D 76 03  STA $0376
.C:52f6  29 01     AND #$01
.C:52f8  D0 0E     BNE $5308
.C:52fa  AD 73 03  LDA $0373
.C:52fd  18        CLC
.C:52fe  69 08     ADC #$08
.C:5300  8D 73 03  STA $0373
.C:5303  90 03     BCC $5308
.C:5305  EE 74 03  INC $0374
.C:5308  4C E6 52  JMP $52E6
.C:530b  EE 77 03  INC $0377
.C:530e  AD 76 03  LDA $0376
.C:5311  8D F9 77  STA $77F9
.C:5314  A9 0B     LDA #$0B
.C:5316  8D 28 D0  STA $D028
.C:5319  AD 72 03  LDA $0372
.C:531c  8D 03 D0  STA $D003
.C:531f  AD 73 03  LDA $0373
.C:5322  18        CLC
.C:5323  69 18     ADC #$18
.C:5325  8D 02 D0  STA $D002
.C:5328  AD 74 03  LDA $0374
.C:532b  69 00     ADC #$00
.C:532d  AA        TAX
.C:532e  AD 10 D0  LDA $D010
.C:5331  29 FD     AND #$FD
.C:5333  E0 00     CPX #$00
.C:5335  F0 02     BEQ $5339
.C:5337  09 02     ORA #$02
.C:5339  8D 10 D0  STA $D010
.C:533c  AD 15 D0  LDA $D015
.C:533f  09 02     ORA #$02
.C:5341  8D 15 D0  STA $D015
.C:5344  AD 72 03  LDA $0372
.C:5347  C9 75     CMP #$75
.C:5349  F0 01     BEQ $534C
.C:534b  60        RTS
.C:534c  AD 73 03  LDA $0373
.C:534f  4A        LSR A
.C:5350  4A        LSR A
.C:5351  4A        LSR A
.C:5352  18        CLC
.C:5353  69 3F     ADC #$3F
.C:5355  AE 74 03  LDX $0374
.C:5358  F0 03     BEQ $535D
.C:535a  18        CLC
.C:535b  69 20     ADC #$20
.C:535d  85 FB     STA $FB
.C:535f  85 FD     STA $FD
.C:5361  A9 75     LDA #$75
.C:5363  85 FC     STA $FC
.C:5365  A9 D9     LDA #$D9
.C:5367  85 FE     STA $FE
.C:5369  A2 0B     LDX #$0B
.C:536b  BD E8 63  LDA $63E8,X
.C:536e  BC F4 63  LDY $63F4,X
.C:5371  91 FB     STA ($FB),Y
.C:5373  AD 2F DA  LDA $DA2F
.C:5376  91 FD     STA ($FD),Y
.C:5378  CA        DEX
.C:5379  10 F0     BPL $536B
.C:537b  60        RTS
.C:537c  20 DC 49  JSR $49DC
.C:537f  A9 C5     LDA #$C5
.C:5381  8D 72 03  STA $0372
.C:5384  A9 10     LDA #$10
.C:5386  8D 73 03  STA $0373
.C:5389  8D 75 03  STA $0375
.C:538c  A9 FF     LDA #$FF
.C:538e  8D 77 03  STA $0377
.C:5391  A9 94     LDA #$94
.C:5393  8D 76 03  STA $0376
.C:5396  A9 00     LDA #$00
.C:5398  8D 74 03  STA $0374
.C:539b  4C 0B 53  JMP $530B
.C:539e  AE 3D 03  LDX $033D
.C:53a1  BD E1 6F  LDA $6FE1,X
.C:53a4  29 01     AND #$01
.C:53a6  D0 03     BNE $53AB
.C:53a8  4C 31 EA  JMP $EA31
.C:53ab  CE 67 03  DEC $0367
.C:53ae  D0 F8     BNE $53A8
.C:53b0  A9 06     LDA #$06
.C:53b2  8D 67 03  STA $0367
.C:53b5  EE 66 03  INC $0366
.C:53b8  AD 66 03  LDA $0366
.C:53bb  29 1F     AND #$1F
.C:53bd  8D 66 03  STA $0366
.C:53c0  AA        TAX
.C:53c1  A9 01     LDA #$01
.C:53c3  8D 2B D0  STA $D02B
.C:53c6  8D 2D D0  STA $D02D
.C:53c9  BD 68 63  LDA $6368,X
.C:53cc  8D FC 77  STA $77FC
.C:53cf  BD 88 63  LDA $6388,X
.C:53d2  8D FE 77  STA $77FE
.C:53d5  AD 10 D0  LDA $D010
.C:53d8  29 8F     AND #$8F
.C:53da  8D 10 D0  STA $D010
.C:53dd  BD A8 63  LDA $63A8,X
.C:53e0  8D 08 D0  STA $D008
.C:53e3  A9 42     LDA #$42
.C:53e5  8D 09 D0  STA $D009
.C:53e8  BD C8 63  LDA $63C8,X
.C:53eb  8D 0C D0  STA $D00C
.C:53ee  A9 6C     LDA #$6C
.C:53f0  8D 0D D0  STA $D00D
.C:53f3  8A        TXA
.C:53f4  29 07     AND #$07
.C:53f6  D0 03     BNE $53FB
.C:53f8  20 49 3E  JSR $3E49
.C:53fb  AD 15 D0  LDA $D015
.C:53fe  09 50     ORA #$50
.C:5400  8D 15 D0  STA $D015
.C:5403  4C A8 53  JMP $53A8
.C:5406  AE 3D 03  LDX $033D
.C:5409  BD E1 6F  LDA $6FE1,X
.C:540c  29 01     AND #$01
.C:540e  D0 03     BNE $5413
.C:5410  4C 44 54  JMP $5444
.C:5413  AD 41 03  LDA $0341
.C:5416  D0 F8     BNE $5410
.C:5418  AD 40 03  LDA $0340
.C:541b  C9 58     CMP #$58
.C:541d  90 F1     BCC $5410
.C:541f  C9 E0     CMP #$E0
.C:5421  B0 ED     BCS $5410
.C:5423  4C 65 54  JMP $5465
.C:5426  C9 00     CMP #$00
.C:5428  F0 E6     BEQ $5410
.C:542a  AD 3E 03  LDA $033E
.C:542d  D0 E1     BNE $5410
.C:542f  A2 00     LDX #$00
.C:5431  8E 41 03  STX $0341
.C:5434  E8        INX
.C:5435  8E 78 03  STX $0378
.C:5438  AE 66 03  LDX $0366
.C:543b  BD 48 63  LDA $6348,X
.C:543e  8D 40 03  STA $0340
.C:5441  4C 49 54  JMP $5449
.C:5444  A9 00     LDA #$00
.C:5446  8D 78 03  STA $0378
.C:5449  4C 77 54  JMP $5477
.C:544c  20 C8 54  JSR $54C8
.C:544f  F0 09     BEQ $545A
.C:5451  A9 A7     LDA #$A7
.C:5453  AC 46 03  LDY $0346
.C:5456  F0 02     BEQ $545A
.C:5458  A9 B5     LDA #$B5
.C:545a  4C 5E 4A  JMP $4A5E
.C:545d  A9 00     LDA #$00
.C:545f  8D 78 03  STA $0378
.C:5462  4C 84 54  JMP $5484
.C:5465  AD 1E D0  LDA $D01E
.C:5468  29 41     AND #$41
.C:546a  C9 41     CMP #$41
.C:546c  D0 03     BNE $5471
.C:546e  4C 2A 54  JMP $542A
.C:5471  AD 78 03  LDA $0378
.C:5474  4C 26 54  JMP $5426
.C:5477  AE 3D 03  LDX $033D
.C:547a  BD 11 70  LDA $7011,X
.C:547d  29 04     AND #$04
.C:547f  D0 09     BNE $548A
.C:5481  4C D4 54  JMP $54D4
.C:5484  8D 79 03  STA $0379
.C:5487  4C C9 41  JMP $41C9
.C:548a  AD 1F D0  LDA $D01F
.C:548d  29 01     AND #$01
.C:548f  F0 F0     BEQ $5481
.C:5491  AD 41 03  LDA $0341
.C:5494  0D 3E 03  ORA $033E
.C:5497  D0 E8     BNE $5481
.C:5499  AD 79 03  LDA $0379
.C:549c  D0 13     BNE $54B1
.C:549e  AD 40 03  LDA $0340
.C:54a1  C9 58     CMP #$58
.C:54a3  90 DC     BCC $5481
.C:54a5  C9 E0     CMP #$E0
.C:54a7  B0 D8     BCS $5481
.C:54a9  A9 01     LDA #$01
.C:54ab  8D 79 03  STA $0379
.C:54ae  20 00 3C  JSR $3C00
.C:54b1  A2 00     LDX #$00
.C:54b3  BD 44 63  LDA $6344,X
.C:54b6  CD 40 03  CMP $0340
.C:54b9  B0 04     BCS $54BF
.C:54bb  E8        INX
.C:54bc  4C B3 54  JMP $54B3
.C:54bf  BD 40 63  LDA $6340,X
.C:54c2  8D 40 03  STA $0340
.C:54c5  4C D9 54  JMP $54D9
.C:54c8  48        PHA
.C:54c9  AD 78 03  LDA $0378
.C:54cc  0D 79 03  ORA $0379
.C:54cf  A8        TAY
.C:54d0  68        PLA
.C:54d1  C0 00     CPY #$00
.C:54d3  60        RTS
.C:54d4  A9 00     LDA #$00
.C:54d6  8D 79 03  STA $0379
.C:54d9  4C DC 49  JMP $49DC
.C:54dc  29 FD     AND #$FD
.C:54de  8D 15 D0  STA $D015
.C:54e1  AD 73 03  LDA $0373
.C:54e4  4A        LSR A
.C:54e5  4A        LSR A
.C:54e6  4A        LSR A
.C:54e7  AE 74 03  LDX $0374
.C:54ea  F0 03     BEQ $54EF
.C:54ec  18        CLC
.C:54ed  69 20     ADC #$20
.C:54ef  85 62     STA $62
.C:54f1  A9 74     LDA #$74
.C:54f3  85 63     STA $63
.C:54f5  C6 62     DEC $62
.C:54f7  C6 62     DEC $62
.C:54f9  AD 72 03  LDA $0372
.C:54fc  38        SEC
.C:54fd  E9 35     SBC #$35
.C:54ff  4A        LSR A
.C:5500  4A        LSR A
.C:5501  4A        LSR A
.C:5502  A8        TAY
.C:5503  F0 0E     BEQ $5513
.C:5505  A5 62     LDA $62
.C:5507  18        CLC
.C:5508  69 28     ADC #$28
.C:550a  85 62     STA $62
.C:550c  90 02     BCC $5510
.C:550e  E6 63     INC $63
.C:5510  88        DEY
.C:5511  D0 F2     BNE $5505
.C:5513  A5 62     LDA $62
.C:5515  85 64     STA $64
.C:5517  A5 63     LDA $63
.C:5519  18        CLC
.C:551a  69 64     ADC #$64
.C:551c  85 65     STA $65
.C:551e  A2 1B     LDX #$1B
.C:5520  BC 24 63  LDY $6324,X
.C:5523  BD 08 63  LDA $6308,X
.C:5526  91 62     STA ($62),Y
.C:5528  BD E4 5A  LDA $5AE4,X
.C:552b  91 64     STA ($64),Y
.C:552d  CA        DEX
.C:552e  10 F0     BPL $5520
.C:5530  A2 01     LDX #$01
.C:5532  AD 77 03  LDA $0377
.C:5535  DD DA 5A  CMP $5ADA,X
.C:5538  B0 04     BCS $553E
.C:553a  E8        INX
.C:553b  4C 32 55  JMP $5532
.C:553e  8E 91 03  STX $0391
.C:5541  A9 00     LDA #$00
.C:5543  8D 92 03  STA $0392
.C:5546  8D 93 03  STA $0393
.C:5549  AE 3D 03  LDX $033D
.C:554c  F8        SED
.C:554d  AD 93 03  LDA $0393
.C:5550  18        CLC
.C:5551  6D 91 03  ADC $0391
.C:5554  8D 93 03  STA $0393
.C:5557  AD 92 03  LDA $0392
.C:555a  69 00     ADC #$00
.C:555c  8D 92 03  STA $0392
.C:555f  D8        CLD
.C:5560  CA        DEX
.C:5561  10 E9     BPL $554C
.C:5563  A0 51     LDY #$51
.C:5565  AD 92 03  LDA $0392
.C:5568  29 0F     AND #$0F
.C:556a  09 30     ORA #$30
.C:556c  91 62     STA ($62),Y
.C:556e  C8        INY
.C:556f  AD 93 03  LDA $0393
.C:5572  48        PHA
.C:5573  4A        LSR A
.C:5574  4A        LSR A
.C:5575  4A        LSR A
.C:5576  4A        LSR A
.C:5577  09 30     ORA #$30
.C:5579  91 62     STA ($62),Y
.C:557b  C8        INY
.C:557c  68        PLA
.C:557d  29 0F     AND #$0F
.C:557f  09 30     ORA #$30
.C:5581  91 62     STA ($62),Y
.C:5583  AD 92 03  LDA $0392
.C:5586  29 0F     AND #$0F
.C:5588  A8        TAY
.C:5589  F0 08     BEQ $5593
.C:558b  A2 02     LDX #$02
.C:558d  20 AE 4A  JSR $4AAE
.C:5590  88        DEY
.C:5591  D0 F8     BNE $558B
.C:5593  AD 93 03  LDA $0393
.C:5596  4A        LSR A
.C:5597  4A        LSR A
.C:5598  4A        LSR A
.C:5599  4A        LSR A
.C:559a  A8        TAY
.C:559b  F0 08     BEQ $55A5
.C:559d  A2 03     LDX #$03
.C:559f  20 AE 4A  JSR $4AAE
.C:55a2  88        DEY
.C:55a3  D0 F8     BNE $559D
.C:55a5  AD 93 03  LDA $0393
.C:55a8  29 0F     AND #$0F
.C:55aa  A8        TAY
.C:55ab  F0 08     BEQ $55B5
.C:55ad  A2 04     LDX #$04
.C:55af  20 AE 4A  JSR $4AAE
.C:55b2  88        DEY
.C:55b3  D0 F8     BNE $55AD
.C:55b5  20 82 48  JSR $4882
.C:55b8  2C 00 00  BIT $0000
.C:55bb  A9 08     LDA #$08
.C:55bd  85 60     STA $60
.C:55bf  A2 00     LDX #$00
.C:55c1  A0 00     LDY #$00
.C:55c3  88        DEY
.C:55c4  D0 FD     BNE $55C3
.C:55c6  CA        DEX
.C:55c7  D0 F8     BNE $55C1
.C:55c9  C6 60     DEC $60
.C:55cb  D0 F2     BNE $55BF
.C:55cd  A9 01     LDA #$01
.C:55cf  8D 15 D0  STA $D015
.C:55d2  60        RTS
.C:55d3  A9 AA     LDA #$AA
.C:55d5  8D 00 D0  STA $D000
.C:55d8  A9 98     LDA #$98
.C:55da  8D 01 D0  STA $D001
.C:55dd  A9 00     LDA #$00
.C:55df  8D 10 D0  STA $D010
.C:55e2  A9 A1     LDA #$A1
.C:55e4  8D F8 77  STA $77F8
.C:55e7  A2 00     LDX #$00
.C:55e9  A9 20     LDA #$20
.C:55eb  9D 00 74  STA $7400,X
.C:55ee  9D 00 75  STA $7500,X
.C:55f1  9D 00 76  STA $7600,X
.C:55f4  9D F0 76  STA $76F0,X
.C:55f7  E8        INX
.C:55f8  D0 EF     BNE $55E9
.C:55fa  A2 07     LDX #$07
.C:55fc  BD 00 63  LDA $6300,X
.C:55ff  9D A0 75  STA $75A0,X
.C:5602  A9 03     LDA #$03
.C:5604  9D A0 D9  STA $D9A0,X
.C:5607  CA        DEX
.C:5608  10 F2     BPL $55FC
.C:560a  A2 0E     LDX #$0E
.C:560c  BD C8 5A  LDA $5AC8,X
.C:560f  9D 02 D0  STA $D002,X
.C:5612  CA        DEX
.C:5613  10 F7     BPL $560C
.C:5615  A2 06     LDX #$06
.C:5617  A9 02     LDA #$02
.C:5619  9D 28 D0  STA $D028,X
.C:561c  A9 90     LDA #$90
.C:561e  9D F9 77  STA $77F9,X
.C:5621  CA        DEX
.C:5622  10 F3     BPL $5617
.C:5624  A9 01     LDA #$01
.C:5626  8D 1C D0  STA $D01C
.C:5629  A9 00     LDA #$00
.C:562b  8D 17 D0  STA $D017
.C:562e  8D 1D D0  STA $D01D
.C:5631  A9 FF     LDA #$FF
.C:5633  8D 15 D0  STA $D015
.C:5636  A9 1B     LDA #$1B
.C:5638  85 60     STA $60
.C:563a  A5 60     LDA $60
.C:563c  29 03     AND #$03
.C:563e  AA        TAX
.C:563f  BD D7 5A  LDA $5AD7,X
.C:5642  A2 06     LDX #$06
.C:5644  9D F9 77  STA $77F9,X
.C:5647  CA        DEX
.C:5648  10 FA     BPL $5644
.C:564a  A9 01     LDA #$01
.C:564c  85 61     STA $61
.C:564e  A2 00     LDX #$00
.C:5650  A0 00     LDY #$00
.C:5652  88        DEY
.C:5653  D0 FD     BNE $5652
.C:5655  CA        DEX
.C:5656  D0 F8     BNE $5650
.C:5658  C6 61     DEC $61
.C:565a  D0 F2     BNE $564E
.C:565c  C6 60     DEC $60
.C:565e  D0 DA     BNE $563A
.C:5660  A2 06     LDX #$06
.C:5662  A9 90     LDA #$90
.C:5664  9D F9 77  STA $77F9,X
.C:5667  CA        DEX
.C:5668  10 F8     BPL $5662
.C:566a  A2 02     LDX #$02
.C:566c  20 AE 4A  JSR $4AAE
.C:566f  A2 02     LDX #$02
.C:5671  20 AE 4A  JSR $4AAE
.C:5674  A9 10     LDA #$10
.C:5676  8D 40 03  STA $0340
.C:5679  A9 00     LDA #$00
.C:567b  8D 41 03  STA $0341
.C:567e  8D 3E 03  STA $033E
.C:5681  AE 3D 03  LDX $033D
.C:5684  E8        INX
.C:5685  E0 30     CPX #$30
.C:5687  D0 02     BNE $568B
.C:5689  A2 00     LDX #$00
.C:568b  8E 3D 03  STX $033D
.C:568e  A2 0C     LDX #$0C
.C:5690  8A        TXA
.C:5691  A2 00     LDX #$00
.C:5693  A0 00     LDY #$00
.C:5695  88        DEY
.C:5696  D0 FD     BNE $5695
.C:5698  CA        DEX
.C:5699  D0 F8     BNE $5693
.C:569b  AA        TAX
.C:569c  CA        DEX
.C:569d  D0 F1     BNE $5690
.C:569f  A9 00     LDA #$00
.C:56a1  8D 15 D0  STA $D015
.C:56a4  4C 47 48  JMP $4847
.C:56a7  20 19 42  JSR $4219
.C:56aa  A2 00     LDX #$00
.C:56ac  BD 00 84  LDA $8400,X
.C:56af  9D 00 74  STA $7400,X
.C:56b2  BD 00 85  LDA $8500,X
.C:56b5  9D 00 75  STA $7500,X
.C:56b8  BD 00 86  LDA $8600,X
.C:56bb  9D 00 76  STA $7600,X
.C:56be  BD F0 86  LDA $86F0,X
.C:56c1  9D F0 76  STA $76F0,X
.C:56c4  BD 00 88  LDA $8800,X
.C:56c7  9D 00 D8  STA $D800,X
.C:56ca  BD 00 89  LDA $8900,X
.C:56cd  9D 00 D9  STA $D900,X
.C:56d0  BD 00 8A  LDA $8A00,X
.C:56d3  9D 00 DA  STA $DA00,X
.C:56d6  BD F0 8A  LDA $8AF0,X
.C:56d9  9D F0 DA  STA $DAF0,X
.C:56dc  E8        INX
.C:56dd  D0 CD     BNE $56AC
.C:56df  A2 4F     LDX #$4F
.C:56e1  BD 41 70  LDA $7041,X
.C:56e4  9D 00 74  STA $7400,X
.C:56e7  BD 91 70  LDA $7091,X
.C:56ea  9D 00 D8  STA $D800,X
.C:56ed  CA        DEX
.C:56ee  10 F1     BPL $56E1
.C:56f0  4C 82 48  JMP $4882
.C:56f3  AE 3D 03  LDX $033D
.C:56f6  BD 11 70  LDA $7011,X
.C:56f9  29 04     AND #$04
.C:56fb  F0 03     BEQ $5700
.C:56fd  4C 4E 57  JMP $574E
.C:5700  BD E1 6F  LDA $6FE1,X
.C:5703  29 01     AND #$01
.C:5705  F0 03     BEQ $570A
.C:5707  4C 88 57  JMP $5788
.C:570a  AD 1E D0  LDA $D01E
.C:570d  29 01     AND #$01
.C:570f  F0 0F     BEQ $5720
.C:5711  78        SEI
.C:5712  A9 31     LDA #$31
.C:5714  8D 14 03  STA $0314
.C:5717  A9 EA     LDA #$EA
.C:5719  8D 15 03  STA $0315
.C:571c  58        CLI
.C:571d  4C AA 59  JMP $59AA
.C:5720  20 7E 58  JSR $587E
.C:5723  D0 07     BNE $572C
.C:5725  AD 1F D0  LDA $D01F
.C:5728  29 01     AND #$01
.C:572a  D0 E5     BNE $5711
.C:572c  AD 72 03  LDA $0372
.C:572f  C9 75     CMP #$75
.C:5731  D0 0F     BNE $5742
.C:5733  AD 73 03  LDA $0373
.C:5736  38        SEC
.C:5737  ED 40 03  SBC $0340
.C:573a  AD 74 03  LDA $0374
.C:573d  ED 41 03  SBC $0341
.C:5740  B0 CF     BCS $5711
.C:5742  4C B3 57  JMP $57B3
.C:5745  AD 1E D0  LDA $D01E
.C:5748  AD 1F D0  LDA $D01F
.C:574b  4C 82 48  JMP $4882
.C:574e  AD 3E 03  LDA $033E
.C:5751  F0 03     BEQ $5756
.C:5753  4C 7E 57  JMP $577E
.C:5756  AD 41 03  LDA $0341
.C:5759  D0 F8     BNE $5753
.C:575b  AD 79 03  LDA $0379
.C:575e  D0 F3     BNE $5753
.C:5760  AD 40 03  LDA $0340
.C:5763  C9 50     CMP #$50
.C:5765  90 EC     BCC $5753
.C:5767  C9 DB     CMP #$DB
.C:5769  B0 E8     BCS $5753
.C:576b  A2 03     LDX #$03
.C:576d  AD 40 03  LDA $0340
.C:5770  38        SEC
.C:5771  FD B3 5A  SBC $5AB3,X
.C:5774  C9 0B     CMP #$0B
.C:5776  90 DB     BCC $5753
.C:5778  CA        DEX
.C:5779  10 F2     BPL $576D
.C:577b  4C 11 57  JMP $5711
.C:577e  AD 1E D0  LDA $D01E
.C:5781  29 01     AND #$01
.C:5783  D0 8C     BNE $5711
.C:5785  4C 2C 57  JMP $572C
.C:5788  AD 3E 03  LDA $033E
.C:578b  D0 F8     BNE $5785
.C:578d  AD 78 03  LDA $0378
.C:5790  D0 F3     BNE $5785
.C:5792  AD 41 03  LDA $0341
.C:5795  D0 EE     BNE $5785
.C:5797  AD 40 03  LDA $0340
.C:579a  C9 50     CMP #$50
.C:579c  90 E7     BCC $5785
.C:579e  C9 DB     CMP #$DB
.C:57a0  B0 E3     BCS $5785
.C:57a2  AE 66 03  LDX $0366
.C:57a5  AD 40 03  LDA $0340
.C:57a8  38        SEC
.C:57a9  FD 93 5A  SBC $5A93,X
.C:57ac  C9 15     CMP #$15
.C:57ae  90 D5     BCC $5785
.C:57b0  4C 11 57  JMP $5711
.C:57b3  AE 3D 03  LDX $033D
.C:57b6  BD 11 70  LDA $7011,X
.C:57b9  29 03     AND #$03
.C:57bb  D0 03     BNE $57C0
.C:57bd  4C D9 49  JMP $49D9
.C:57c0  AD 41 03  LDA $0341
.C:57c3  D0 F8     BNE $57BD
.C:57c5  AD 3E 03  LDA $033E
.C:57c8  D0 F3     BNE $57BD
.C:57ca  A2 02     LDX #$02
.C:57cc  AD 40 03  LDA $0340
.C:57cf  DD 90 5A  CMP $5A90,X
.C:57d2  90 08     BCC $57DC
.C:57d4  DD 8D 5A  CMP $5A8D,X
.C:57d7  B0 03     BCS $57DC
.C:57d9  4C 11 57  JMP $5711
.C:57dc  CA        DEX
.C:57dd  10 ED     BPL $57CC
.C:57df  4C BD 57  JMP $57BD
.C:57e2  20 2C 3C  JSR $3C2C
.C:57e5  EE 01 D0  INC $D001
.C:57e8  A2 02     LDX #$02
.C:57ea  A0 00     LDY #$00
.C:57ec  88        DEY
.C:57ed  D0 FD     BNE $57EC
.C:57ef  CA        DEX
.C:57f0  D0 F8     BNE $57EA
.C:57f2  AD 01 D0  LDA $D001
.C:57f5  C9 FF     CMP #$FF
.C:57f7  D0 EC     BNE $57E5
.C:57f9  CE 51 03  DEC $0351
.C:57fc  20 82 48  JSR $4882
.C:57ff  20 5F 3C  JSR $3C5F
.C:5802  AD 51 03  LDA $0351
.C:5805  D0 03     BNE $580A
.C:5807  4C 1D 58  JMP $581D
.C:580a  A9 10     LDA #$10
.C:580c  8D 40 03  STA $0340
.C:580f  A9 00     LDA #$00
.C:5811  8D 3E 03  STA $033E
.C:5814  8D 41 03  STA $0341
.C:5817  8D 15 D0  STA $D015
.C:581a  4C 47 48  JMP $4847
.C:581d  A2 08     LDX #$08
.C:581f  BD 84 5A  LDA $5A84,X
.C:5822  9D 00 75  STA $7500,X
.C:5825  A9 01     LDA #$01
.C:5827  9D 00 D9  STA $D900,X
.C:582a  CA        DEX
.C:582b  10 F2     BPL $581F
.C:582d  A9 81     LDA #$81
.C:582f  85 64     STA $64
.C:5831  A9 00     LDA #$00
.C:5833  85 63     STA $63
.C:5835  A2 04     LDX #$04
.C:5837  A0 00     LDY #$00
.C:5839  20 78 58  JSR $5878
.C:583c  D1 63     CMP ($63),Y
.C:583e  F0 04     BEQ $5844
.C:5840  B0 26     BCS $5868
.C:5842  90 05     BCC $5849
.C:5844  C8        INY
.C:5845  C0 07     CPY #$07
.C:5847  D0 F0     BNE $5839
.C:5849  A5 63     LDA $63
.C:584b  18        CLC
.C:584c  69 0A     ADC #$0A
.C:584e  85 63     STA $63
.C:5850  CA        DEX
.C:5851  10 E4     BPL $5837
.C:5853  A9 0C     LDA #$0C
.C:5855  85 60     STA $60
.C:5857  A2 00     LDX #$00
.C:5859  A0 00     LDY #$00
.C:585b  88        DEY
.C:585c  D0 FD     BNE $585B
.C:585e  CA        DEX
.C:585f  D0 F8     BNE $5859
.C:5861  C6 60     DEC $60
.C:5863  D0 F2     BNE $5857
.C:5865  4C 70 58  JMP $5870
.C:5868  A9 00     LDA #$00
.C:586a  20 00 3E  JSR $3E00
.C:586d  4C 8E 58  JMP $588E
.C:5870  A9 00     LDA #$00
.C:5872  8D 15 D0  STA $D015
.C:5875  4C 6C 40  JMP $406C
.C:5878  B9 49 03  LDA $0349,Y
.C:587b  09 30     ORA #$30
.C:587d  60        RTS
.C:587e  AD 40 03  LDA $0340
.C:5881  C9 E8     CMP #$E8
.C:5883  B0 03     BCS $5888
.C:5885  A9 00     LDA #$00
.C:5887  2C A9 01  BIT $01A9
.C:588a  0D 41 03  ORA $0341
.C:588d  60        RTS
.C:588e  A2 00     LDX #$00
.C:5890  A9 20     LDA #$20
.C:5892  9D 00 74  STA $7400,X
.C:5895  9D 00 75  STA $7500,X
.C:5898  9D 00 76  STA $7600,X
.C:589b  9D F0 76  STA $76F0,X
.C:589e  A9 01     LDA #$01
.C:58a0  9D 00 D8  STA $D800,X
.C:58a3  9D 00 D9  STA $D900,X
.C:58a6  9D 00 DA  STA $DA00,X
.C:58a9  9D F0 DA  STA $DAF0,X
.C:58ac  E8        INX
.C:58ad  D0 E1     BNE $5890
.C:58af  20 03 41  JSR $4103
.C:58b2  A0 30     LDY #$30
.C:58b4  B1 63     LDA ($63),Y
.C:58b6  AA        TAX
.C:58b7  98        TYA
.C:58b8  18        CLC
.C:58b9  69 0A     ADC #$0A
.C:58bb  A8        TAY
.C:58bc  8A        TXA
.C:58bd  91 63     STA ($63),Y
.C:58bf  98        TYA
.C:58c0  38        SEC
.C:58c1  E9 0A     SBC #$0A
.C:58c3  A8        TAY
.C:58c4  88        DEY
.C:58c5  10 ED     BPL $58B4
.C:58c7  A2 17     LDX #$17
.C:58c9  BD 4C 5A  LDA $5A4C,X
.C:58cc  9D 88 76  STA $7688,X
.C:58cf  A9 02     LDA #$02
.C:58d1  9D 88 DA  STA $DA88,X
.C:58d4  BD 34 5A  LDA $5A34,X
.C:58d7  9D 00 77  STA $7700,X
.C:58da  BD 1C 5A  LDA $5A1C,X
.C:58dd  9D 50 77  STA $7750,X
.C:58e0  BD 04 5A  LDA $5A04,X
.C:58e3  9D A0 77  STA $77A0,X
.C:58e6  CA        DEX
.C:58e7  10 E0     BPL $58C9
.C:58e9  A9 00     LDA #$00
.C:58eb  8D A0 03  STA $03A0
.C:58ee  8D A1 03  STA $03A1
.C:58f1  AE A0 03  LDX $03A0
.C:58f4  BC 64 5A  LDY $5A64,X
.C:58f7  A9 02     LDA #$02
.C:58f9  20 D7 59  JSR $59D7
.C:58fc  20 20 49  JSR $4920
.C:58ff  20 C5 59  JSR $59C5
.C:5902  D0 41     BNE $5945
.C:5904  20 CB 59  JSR $59CB
.C:5907  D0 22     BNE $592B
.C:5909  20 D1 59  JSR $59D1
.C:590c  F0 EE     BEQ $58FC
.C:590e  20 39 59  JSR $5939
.C:5911  AE A0 03  LDX $03A0
.C:5914  E8        INX
.C:5915  E0 1E     CPX #$1E
.C:5917  D0 02     BNE $591B
.C:5919  A2 00     LDX #$00
.C:591b  8E A0 03  STX $03A0
.C:591e  A2 01     LDX #$01
.C:5920  A0 00     LDY #$00
.C:5922  88        DEY
.C:5923  D0 FD     BNE $5922
.C:5925  CA        DEX
.C:5926  D0 F8     BNE $5920
.C:5928  4C F1 58  JMP $58F1
.C:592b  20 39 59  JSR $5939
.C:592e  AE A0 03  LDX $03A0
.C:5931  CA        DEX
.C:5932  10 02     BPL $5936
.C:5934  A2 1D     LDX #$1D
.C:5936  4C 1B 59  JMP $591B
.C:5939  AE A0 03  LDX $03A0
.C:593c  BC 64 5A  LDY $5A64,X
.C:593f  A9 01     LDA #$01
.C:5941  99 00 DB  STA $DB00,Y
.C:5944  60        RTS
.C:5945  AE A0 03  LDX $03A0
.C:5948  E0 13     CPX #$13
.C:594a  F0 3A     BEQ $5986
.C:594c  E0 1D     CPX #$1D
.C:594e  D0 46     BNE $5996
.C:5950  A0 06     LDY #$06
.C:5952  B9 49 03  LDA $0349,Y
.C:5955  09 30     ORA #$30
.C:5957  91 63     STA ($63),Y
.C:5959  88        DEY
.C:595a  10 F6     BPL $5952
.C:595c  A0 07     LDY #$07
.C:595e  AD 9C 76  LDA $769C
.C:5961  91 63     STA ($63),Y
.C:5963  C8        INY
.C:5964  AD 9D 76  LDA $769D
.C:5967  91 63     STA ($63),Y
.C:5969  C8        INY
.C:596a  AD 9E 76  LDA $769E
.C:596d  91 63     STA ($63),Y
.C:596f  20 03 41  JSR $4103
.C:5972  A2 18     LDX #$18
.C:5974  8A        TXA
.C:5975  A2 00     LDX #$00
.C:5977  A0 00     LDY #$00
.C:5979  88        DEY
.C:597a  D0 FD     BNE $5979
.C:597c  CA        DEX
.C:597d  D0 F8     BNE $5977
.C:597f  AA        TAX
.C:5980  CA        DEX
.C:5981  D0 F1     BNE $5974
.C:5983  4C 6C 40  JMP $406C
.C:5986  AE A1 03  LDX $03A1
.C:5989  A9 20     LDA #$20
.C:598b  9D 9C 76  STA $769C,X
.C:598e  E0 00     CPX #$00
.C:5990  F0 01     BEQ $5993
.C:5992  CA        DEX
.C:5993  4C B5 59  JMP $59B5
.C:5996  AC A0 03  LDY $03A0
.C:5999  AE A1 03  LDX $03A1
.C:599c  B9 E6 59  LDA $59E6,Y
.C:599f  9D 9C 76  STA $769C,X
.C:59a2  E0 02     CPX #$02
.C:59a4  F0 01     BEQ $59A7
.C:59a6  E8        INX
.C:59a7  4C B5 59  JMP $59B5
.C:59aa  A9 00     LDA #$00
.C:59ac  8D 48 03  STA $0348
.C:59af  8D 46 03  STA $0346
.C:59b2  4C E2 57  JMP $57E2
.C:59b5  8E A1 03  STX $03A1
.C:59b8  20 20 49  JSR $4920
.C:59bb  AD FF 03  LDA $03FF
.C:59be  29 10     AND #$10
.C:59c0  D0 F6     BNE $59B8
.C:59c2  4C F1 58  JMP $58F1
.C:59c5  AD FF 03  LDA $03FF
.C:59c8  29 10     AND #$10
.C:59ca  60        RTS
.C:59cb  AD FF 03  LDA $03FF
.C:59ce  29 04     AND #$04
.C:59d0  60        RTS
.C:59d1  AD FF 03  LDA $03FF
.C:59d4  29 08     AND #$08
.C:59d6  60        RTS
.C:59d7  99 00 DB  STA $DB00,Y
.C:59da  A2 A0     LDX #$A0
.C:59dc  A0 00     LDY #$00
.C:59de  88        DEY
.C:59df  D0 FD     BNE $59DE
.C:59e1  CA        DEX
.C:59e2  D0 F8     BNE $59DC
.C:59e4  60        RTS
.C:59e5  AA        TAX
.C:59e6  01 02     ORA ($02,X)
.C:59e8  03         $03
.C:59e9  04         $04
.C:59ea  05 06     ORA $06
.C:59ec  07         $07
.C:59ed  08        PHP
.C:59ee  09 20     ORA #$20
.C:59f0  0A        ASL A
.C:59f1  0B         $0B
.C:59f2  0C         $0C
.C:59f3  0D 0E 0F  ORA $0F0E
.C:59f6  10 11     BPL $5A09
.C:59f8  12         $12
.C:59f9  00        BRK
.C:59fa  13         $13
.C:59fb  14         $14
.C:59fc  15 16     ORA $16,X
.C:59fe  17         $17
.C:59ff  18        CLC
.C:5a00  19 1A 2E  ORA $2E1A,Y
.C:5a03  00        BRK
.C:5a04  13         $13
.C:5a05  20 14 20  JSR $2014
.C:5a08  15 20     ORA $20,X
.C:5a0a  16 20     ASL $20,X
.C:5a0c  17         $17
.C:5a0d  20 18 20  JSR $2018
.C:5a10  19 20 1A  ORA $1A20,Y
.C:5a13  20 2E 20  JSR $202E
.C:5a16  20 05 0E  JSR $0E05
.C:5a19  04         $04
.C:5a1a  20 20 0A  JSR $0A20
.C:5a1d  20 0B 20  JSR $200B
.C:5a20  0C         $0C
.C:5a21  20 0D 20  JSR $200D
.C:5a24  0E 20 0F  ASL $0F20
.C:5a27  20 10 20  JSR $2010
.C:5a2a  11 20     ORA ($20),Y
.C:5a2c  12         $12
.C:5a2d  20 20 12  JSR $1220
.C:5a30  15 02     ORA $02,X
.C:5a32  20 20 01  JSR $0120
.C:5a35  20 02 20  JSR $2002
.C:5a38  03         $03
.C:5a39  20 04 20  JSR $2004
.C:5a3c  05 20     ORA $20
.C:5a3e  06 20     ASL $20
.C:5a40  07         $07
.C:5a41  20 08 20  JSR $2008
.C:5a44  09 20     ORA #$20
.C:5a46  20 13 10  JSR $1013
.C:5a49  01 03     ORA ($03,X)
.C:5a4b  05 20     ORA $20
.C:5a4d  0E 01 0D  ASL $0D01
.C:5a50  05 20     ORA $20
.C:5a52  12         $12
.C:5a53  05 07     ORA $07
.C:5a55  09 13     ORA #$13
.C:5a57  14         $14
.C:5a58  12         $12
.C:5a59  01 14     ORA ($14,X)
.C:5a5b  09 0F     ORA #$0F
.C:5a5d  0E 20 20  ASL $2020
.C:5a60  20 20 20  JSR $2020
.C:5a63  20 00 02  JSR $0200
.C:5a66  04         $04
.C:5a67  06 08     ASL $08
.C:5a69  0A        ASL A
.C:5a6a  0C         $0C
.C:5a6b  0E 10 13  ASL $1310
.C:5a6e  50 52     BVC $5AC2
.C:5a70  54         $54
.C:5a71  56 58     LSR $58,X
.C:5a73  5A         $5A
.C:5a74  5C         $5C
.C:5a75  5E 60 63  LSR $6360,X
.C:5a78  A0 A2     LDY #$A2
.C:5a7a  A4 A6     LDY $A6
.C:5a7c  A8        TAY
.C:5a7d  AA        TAX
.C:5a7e  AC AE B0  LDY $B0AE
.C:5a81  B3         $B3
.C:5a82  AA        TAX
.C:5a83  AA        TAX
.C:5a84  07         $07
.C:5a85  01 0D     ORA ($0D,X)
.C:5a87  05 20     ORA $20
.C:5a89  0F         $0F
.C:5a8a  16 05     ASL $05,X
.C:5a8c  12         $12
.C:5a8d  5A         $5A
.C:5a8e  A2 EA     LDX #$EA
.C:5a90  42         $42
.C:5a91  8A        TXA
.C:5a92  D2         $D2
.C:5a93  BC B8 B0  LDY $B0B8,X
.C:5a96  A8        TAY
.C:5a97  A2 9C     LDX #$9C
.C:5a99  94 8E     STY $8E,X
.C:5a9b  8A        TXA
.C:5a9c  80         $80
.C:5a9d  78        SEI
.C:5a9e  72         $72
.C:5a9f  6C 64 5C  JMP ($5C64)
.C:5aa2  58        CLI
.C:5aa3  58        CLI
.C:5aa4  5C         $5C
.C:5aa5  64         $64
.C:5aa6  6C 72 78  JMP ($7872)
.C:5aa9  80         $80
.C:5aaa  8A        TXA
.C:5aab  8E 94 9C  STX $9C94
.C:5aae  A2 A8     LDX #$A8
.C:5ab0  B0 B8     BCS $5A6A
.C:5ab2  BC 5E 7E  LDY $7E5E,X
.C:5ab5  9E         $9E
.C:5ab6  BE 10 04  LDX $0410,Y
.C:5ab9  08        PHP
.C:5aba  04         $04
.C:5abb  80         $80
.C:5abc  10 06     BPL $5AC4
.C:5abe  02         $02
.C:5abf  02         $02
.C:5ac0  7F         $7F
.C:5ac1  BF         $BF
.C:5ac2  DF         $DF
.C:5ac3  EF         $EF
.C:5ac4  F7         $F7
.C:5ac5  FB         $FB
.C:5ac6  FD FE 48  SBC $48FE,X
.C:5ac9  72         $72
.C:5aca  38        SEC
.C:5acb  B6 94     LDX $94,Y
.C:5acd  D0 F8     BNE $5AC7
.C:5acf  C3         $C3
.C:5ad0  24 86     BIT $86
.C:5ad2  EB         $EB
.C:5ad3  60        RTS
.C:5ad4  88        DEY
.C:5ad5  46 20     LSR $20
.C:5ad7  93         $93
.C:5ad8  92         $92
.C:5ad9  93         $93
.C:5ada  90 50     BCC $5B2C
.C:5adc  46 3C     LSR $3C
.C:5ade  32         $32
.C:5adf  28        PLP
.C:5ae0  1E 14 0A  ASL $0A14,X
.C:5ae3  00        BRK
.C:5ae4  0A        ASL A
.C:5ae5  0A        ASL A
.C:5ae6  0A        ASL A
.C:5ae7  0A        ASL A
.C:5ae8  0A        ASL A
.C:5ae9  0A        ASL A
.C:5aea  0A        ASL A
.C:5aeb  0A        ASL A
.C:5aec  01 01     ORA ($01,X)
.C:5aee  01 01     ORA ($01,X)
.C:5af0  01 0A     ORA ($0A,X)
.C:5af2  0A        ASL A
.C:5af3  01 01     ORA ($01,X)
.C:5af5  01 01     ORA ($01,X)
.C:5af7  01 0A     ORA ($0A,X)
.C:5af9  0A        ASL A
.C:5afa  0A        ASL A
.C:5afb  0A        ASL A
.C:5afc  0A        ASL A
.C:5afd  0A        ASL A
.C:5afe  0A        ASL A
.C:5aff  0A        ASL A
.C:5b00  80         $80
.C:5b01  00        BRK
.C:5b02  00        BRK
.C:5b03  80         $80
.C:5b04  00        BRK
.C:5b05  00        BRK
.C:5b06  80         $80
.C:5b07  00        BRK
.C:5b08  00        BRK
.C:5b09  80         $80
.C:5b0a  00        BRK
.C:5b0b  00        BRK
.C:5b0c  80         $80
.C:5b0d  00        BRK
.C:5b0e  00        BRK
.C:5b0f  80         $80
.C:5b10  00        BRK
.C:5b11  00        BRK
.C:5b12  80         $80
.C:5b13  00        BRK
.C:5b14  00        BRK
.C:5b15  80         $80
.C:5b16  00        BRK
.C:5b17  00        BRK
.C:5b18  80         $80
.C:5b19  00        BRK
.C:5b1a  00        BRK
.C:5b1b  80         $80
.C:5b1c  00        BRK
.C:5b1d  00        BRK
.C:5b1e  80         $80
.C:5b1f  00        BRK
.C:5b20  00        BRK
.C:5b21  80         $80
.C:5b22  00        BRK
.C:5b23  00        BRK
.C:5b24  80         $80
.C:5b25  00        BRK
.C:5b26  00        BRK
.C:5b27  80         $80
.C:5b28  00        BRK
.C:5b29  00        BRK
.C:5b2a  80         $80
.C:5b2b  00        BRK
.C:5b2c  00        BRK
.C:5b2d  80         $80
.C:5b2e  00        BRK
.C:5b2f  00        BRK
.C:5b30  80         $80
.C:5b31  00        BRK
.C:5b32  00        BRK
.C:5b33  80         $80
.C:5b34  00        BRK
.C:5b35  00        BRK
.C:5b36  80         $80
.C:5b37  00        BRK
.C:5b38  00        BRK
.C:5b39  80         $80
.C:5b3a  00        BRK
.C:5b3b  00        BRK
.C:5b3c  80         $80
.C:5b3d  00        BRK
.C:5b3e  00        BRK
.C:5b3f  AA        TAX
.C:5b40  80         $80
.C:5b41  00        BRK
.C:5b42  00        BRK
.C:5b43  80         $80
.C:5b44  00        BRK
.C:5b45  00        BRK
.C:5b46  40        RTI
.C:5b47  00        BRK
.C:5b48  00        BRK
.C:5b49  40        RTI
.C:5b4a  00        BRK
.C:5b4b  00        BRK
.C:5b4c  40        RTI
.C:5b4d  00        BRK
.C:5b4e  00        BRK
.C:5b4f  40        RTI
.C:5b50  00        BRK
.C:5b51  00        BRK
.C:5b52  40        RTI
.C:5b53  00        BRK
.C:5b54  00        BRK
.C:5b55  40        RTI
.C:5b56  00        BRK
.C:5b57  00        BRK
.C:5b58  40        RTI
.C:5b59  00        BRK
.C:5b5a  00        BRK
.C:5b5b  40        RTI
.C:5b5c  00        BRK
.C:5b5d  00        BRK
.C:5b5e  20 00 00  JSR $0000
.C:5b61  20 00 00  JSR $0000
.C:5b64  20 00 00  JSR $0000
.C:5b67  20 00 00  JSR $0000
.C:5b6a  20 00 00  JSR $0000
.C:5b6d  00        BRK
.C:5b6e  00        BRK
.C:5b6f  00        BRK
.C:5b70  00        BRK
.C:5b71  00        BRK
.C:5b72  00        BRK
.C:5b73  00        BRK
.C:5b74  00        BRK
.C:5b75  00        BRK
.C:5b76  00        BRK
.C:5b77  00        BRK
.C:5b78  00        BRK
.C:5b79  00        BRK
.C:5b7a  00        BRK
.C:5b7b  00        BRK
.C:5b7c  00        BRK
.C:5b7d  00        BRK
.C:5b7e  00        BRK
.C:5b7f  AA        TAX
.C:5b80  80         $80
.C:5b81  00        BRK
.C:5b82  00        BRK
.C:5b83  80         $80
.C:5b84  00        BRK
.C:5b85  00        BRK
.C:5b86  80         $80
.C:5b87  00        BRK
.C:5b88  00        BRK
.C:5b89  80         $80
.C:5b8a  00        BRK
.C:5b8b  00        BRK
.C:5b8c  80         $80
.C:5b8d  00        BRK
.C:5b8e  00        BRK
.C:5b8f  80         $80
.C:5b90  00        BRK
.C:5b91  00        BRK
.C:5b92  40        RTI
.C:5b93  00        BRK
.C:5b94  00        BRK
.C:5b95  40        RTI
.C:5b96  00        BRK
.C:5b97  00        BRK
.C:5b98  40        RTI
.C:5b99  00        BRK
.C:5b9a  00        BRK
.C:5b9b  40        RTI
.C:5b9c  00        BRK
.C:5b9d  00        BRK
.C:5b9e  40        RTI
.C:5b9f  00        BRK
.C:5ba0  00        BRK
.C:5ba1  40        RTI
.C:5ba2  00        BRK
.C:5ba3  00        BRK
.C:5ba4  20 00 00  JSR $0000
.C:5ba7  20 00 00  JSR $0000
.C:5baa  20 00 00  JSR $0000
.C:5bad  20 00 00  JSR $0000
.C:5bb0  20 00 00  JSR $0000
.C:5bb3  20 00 00  JSR $0000
.C:5bb6  10 00     BPL $5BB8
.C:5bb8  00        BRK
.C:5bb9  10 00     BPL $5BBB
.C:5bbb  00        BRK
.C:5bbc  10 00     BPL $5BBE
.C:5bbe  00        BRK
.C:5bbf  AA        TAX
.C:5bc0  10 00     BPL $5BC2
.C:5bc2  00        BRK
.C:5bc3  10 00     BPL $5BC5
.C:5bc5  00        BRK
.C:5bc6  10 00     BPL $5BC8
.C:5bc8  00        BRK
.C:5bc9  08        PHP
.C:5bca  00        BRK
.C:5bcb  00        BRK
.C:5bcc  08        PHP
.C:5bcd  00        BRK
.C:5bce  00        BRK
.C:5bcf  08        PHP
.C:5bd0  00        BRK
.C:5bd1  00        BRK
.C:5bd2  08        PHP
.C:5bd3  00        BRK
.C:5bd4  00        BRK
.C:5bd5  08        PHP
.C:5bd6  00        BRK
.C:5bd7  00        BRK
.C:5bd8  08        PHP
.C:5bd9  00        BRK
.C:5bda  00        BRK
.C:5bdb  04         $04
.C:5bdc  00        BRK
.C:5bdd  00        BRK
.C:5bde  04         $04
.C:5bdf  00        BRK
.C:5be0  00        BRK
.C:5be1  04         $04
.C:5be2  00        BRK
.C:5be3  00        BRK
.C:5be4  04         $04
.C:5be5  00        BRK
.C:5be6  00        BRK
.C:5be7  04         $04
.C:5be8  00        BRK
.C:5be9  00        BRK
.C:5bea  04         $04
.C:5beb  00        BRK
.C:5bec  00        BRK
.C:5bed  00        BRK
.C:5bee  00        BRK
.C:5bef  00        BRK
.C:5bf0  00        BRK
.C:5bf1  00        BRK
.C:5bf2  00        BRK
.C:5bf3  00        BRK
.C:5bf4  00        BRK
.C:5bf5  00        BRK
.C:5bf6  00        BRK
.C:5bf7  00        BRK
.C:5bf8  00        BRK
.C:5bf9  00        BRK
.C:5bfa  00        BRK
.C:5bfb  00        BRK
.C:5bfc  00        BRK
.C:5bfd  00        BRK
.C:5bfe  00        BRK
.C:5bff  AA        TAX
.C:5c00  80         $80
.C:5c01  00        BRK
.C:5c02  00        BRK
.C:5c03  80         $80
.C:5c04  00        BRK
.C:5c05  00        BRK
.C:5c06  80         $80
.C:5c07  00        BRK
.C:5c08  00        BRK
.C:5c09  80         $80
.C:5c0a  00        BRK
.C:5c0b  00        BRK
.C:5c0c  40        RTI
.C:5c0d  00        BRK
.C:5c0e  00        BRK
.C:5c0f  40        RTI
.C:5c10  00        BRK
.C:5c11  00        BRK
.C:5c12  40        RTI
.C:5c13  00        BRK
.C:5c14  00        BRK
.C:5c15  40        RTI
.C:5c16  00        BRK
.C:5c17  00        BRK
.C:5c18  20 00 00  JSR $0000
.C:5c1b  20 00 00  JSR $0000
.C:5c1e  20 00 00  JSR $0000
.C:5c21  20 00 00  JSR $0000
.C:5c24  10 00     BPL $5C26
.C:5c26  00        BRK
.C:5c27  10 00     BPL $5C29
.C:5c29  00        BRK
.C:5c2a  10 00     BPL $5C2C
.C:5c2c  00        BRK
.C:5c2d  08        PHP
.C:5c2e  00        BRK
.C:5c2f  00        BRK
.C:5c30  08        PHP
.C:5c31  00        BRK
.C:5c32  00        BRK
.C:5c33  08        PHP
.C:5c34  00        BRK
.C:5c35  00        BRK
.C:5c36  08        PHP
.C:5c37  00        BRK
.C:5c38  00        BRK
.C:5c39  04         $04
.C:5c3a  00        BRK
.C:5c3b  00        BRK
.C:5c3c  04         $04
.C:5c3d  00        BRK
.C:5c3e  00        BRK
.C:5c3f  AA        TAX
.C:5c40  04         $04
.C:5c41  00        BRK
.C:5c42  00        BRK
.C:5c43  04         $04
.C:5c44  00        BRK
.C:5c45  00        BRK
.C:5c46  02         $02
.C:5c47  00        BRK
.C:5c48  00        BRK
.C:5c49  02         $02
.C:5c4a  00        BRK
.C:5c4b  00        BRK
.C:5c4c  02         $02
.C:5c4d  00        BRK
.C:5c4e  00        BRK
.C:5c4f  02         $02
.C:5c50  00        BRK
.C:5c51  00        BRK
.C:5c52  01 00     ORA ($00,X)
.C:5c54  00        BRK
.C:5c55  01 00     ORA ($00,X)
.C:5c57  00        BRK
.C:5c58  01 00     ORA ($00,X)
.C:5c5a  00        BRK
.C:5c5b  01 00     ORA ($00,X)
.C:5c5d  00        BRK
.C:5c5e  00        BRK
.C:5c5f  80         $80
.C:5c60  00        BRK
.C:5c61  00        BRK
.C:5c62  80         $80
.C:5c63  00        BRK
.C:5c64  00        BRK
.C:5c65  80         $80
.C:5c66  00        BRK
.C:5c67  00        BRK
.C:5c68  80         $80
.C:5c69  00        BRK
.C:5c6a  00        BRK
.C:5c6b  40        RTI
.C:5c6c  00        BRK
.C:5c6d  00        BRK
.C:5c6e  00        BRK
.C:5c6f  00        BRK
.C:5c70  00        BRK
.C:5c71  00        BRK
.C:5c72  00        BRK
.C:5c73  00        BRK
.C:5c74  00        BRK
.C:5c75  00        BRK
.C:5c76  00        BRK
.C:5c77  00        BRK
.C:5c78  00        BRK
.C:5c79  00        BRK
.C:5c7a  00        BRK
.C:5c7b  00        BRK
.C:5c7c  00        BRK
.C:5c7d  00        BRK
.C:5c7e  00        BRK
.C:5c7f  AA        TAX
.C:5c80  80         $80
.C:5c81  00        BRK
.C:5c82  00        BRK
.C:5c83  80         $80
.C:5c84  00        BRK
.C:5c85  00        BRK
.C:5c86  40        RTI
.C:5c87  00        BRK
.C:5c88  00        BRK
.C:5c89  40        RTI
.C:5c8a  00        BRK
.C:5c8b  00        BRK
.C:5c8c  40        RTI
.C:5c8d  00        BRK
.C:5c8e  00        BRK
.C:5c8f  20 00 00  JSR $0000
.C:5c92  20 00 00  JSR $0000
.C:5c95  20 00 00  JSR $0000
.C:5c98  10 00     BPL $5C9A
.C:5c9a  00        BRK
.C:5c9b  10 00     BPL $5C9D
.C:5c9d  00        BRK
.C:5c9e  10 00     BPL $5CA0
.C:5ca0  00        BRK
.C:5ca1  08        PHP
.C:5ca2  00        BRK
.C:5ca3  00        BRK
.C:5ca4  08        PHP
.C:5ca5  00        BRK
.C:5ca6  00        BRK
.C:5ca7  08        PHP
.C:5ca8  00        BRK
.C:5ca9  00        BRK
.C:5caa  04         $04
.C:5cab  00        BRK
.C:5cac  00        BRK
.C:5cad  04         $04
.C:5cae  00        BRK
.C:5caf  00        BRK
.C:5cb0  02         $02
.C:5cb1  00        BRK
.C:5cb2  00        BRK
.C:5cb3  02         $02
.C:5cb4  00        BRK
.C:5cb5  00        BRK
.C:5cb6  02         $02
.C:5cb7  00        BRK
.C:5cb8  00        BRK
.C:5cb9  01 00     ORA ($00,X)
.C:5cbb  00        BRK
.C:5cbc  01 00     ORA ($00,X)
.C:5cbe  00        BRK
.C:5cbf  AA        TAX
.C:5cc0  01 00     ORA ($00,X)
.C:5cc2  00        BRK
.C:5cc3  01 00     ORA ($00,X)
.C:5cc5  00        BRK
.C:5cc6  00        BRK
.C:5cc7  80         $80
.C:5cc8  00        BRK
.C:5cc9  00        BRK
.C:5cca  80         $80
.C:5ccb  00        BRK
.C:5ccc  00        BRK
.C:5ccd  80         $80
.C:5cce  00        BRK
.C:5ccf  00        BRK
.C:5cd0  40        RTI
.C:5cd1  00        BRK
.C:5cd2  00        BRK
.C:5cd3  40        RTI
.C:5cd4  00        BRK
.C:5cd5  00        BRK
.C:5cd6  40        RTI
.C:5cd7  00        BRK
.C:5cd8  00        BRK
.C:5cd9  20 00 00  JSR $0000
.C:5cdc  20 00 00  JSR $0000
.C:5cdf  10 00     BPL $5CE1
.C:5ce1  00        BRK
.C:5ce2  10 00     BPL $5CE4
.C:5ce4  00        BRK
.C:5ce5  10 00     BPL $5CE7
.C:5ce7  00        BRK
.C:5ce8  08        PHP
.C:5ce9  00        BRK
.C:5cea  00        BRK
.C:5ceb  08        PHP
.C:5cec  00        BRK
.C:5ced  00        BRK
.C:5cee  00        BRK
.C:5cef  00        BRK
.C:5cf0  00        BRK
.C:5cf1  00        BRK
.C:5cf2  00        BRK
.C:5cf3  00        BRK
.C:5cf4  00        BRK
.C:5cf5  00        BRK
.C:5cf6  00        BRK
.C:5cf7  00        BRK
.C:5cf8  00        BRK
.C:5cf9  00        BRK
.C:5cfa  00        BRK
.C:5cfb  00        BRK
.C:5cfc  00        BRK
.C:5cfd  00        BRK
.C:5cfe  00        BRK
.C:5cff  AA        TAX
.C:5d00  80         $80
.C:5d01  00        BRK
.C:5d02  00        BRK
.C:5d03  80         $80
.C:5d04  00        BRK
.C:5d05  00        BRK
.C:5d06  40        RTI
.C:5d07  00        BRK
.C:5d08  00        BRK
.C:5d09  40        RTI
.C:5d0a  00        BRK
.C:5d0b  00        BRK
.C:5d0c  40        RTI
.C:5d0d  00        BRK
.C:5d0e  00        BRK
.C:5d0f  20 00 00  JSR $0000
.C:5d12  20 00 00  JSR $0000
.C:5d15  10 00     BPL $5D17
.C:5d17  00        BRK
.C:5d18  10 00     BPL $5D1A
.C:5d1a  00        BRK
.C:5d1b  08        PHP
.C:5d1c  00        BRK
.C:5d1d  00        BRK
.C:5d1e  08        PHP
.C:5d1f  00        BRK
.C:5d20  00        BRK
.C:5d21  04         $04
.C:5d22  00        BRK
.C:5d23  00        BRK
.C:5d24  04         $04
.C:5d25  00        BRK
.C:5d26  00        BRK
.C:5d27  02         $02
.C:5d28  00        BRK
.C:5d29  00        BRK
.C:5d2a  02         $02
.C:5d2b  00        BRK
.C:5d2c  00        BRK
.C:5d2d  01 00     ORA ($00,X)
.C:5d2f  00        BRK
.C:5d30  01 00     ORA ($00,X)
.C:5d32  00        BRK
.C:5d33  01 00     ORA ($00,X)
.C:5d35  00        BRK
.C:5d36  00        BRK
.C:5d37  80         $80
.C:5d38  00        BRK
.C:5d39  00        BRK
.C:5d3a  80         $80
.C:5d3b  00        BRK
.C:5d3c  00        BRK
.C:5d3d  40        RTI
.C:5d3e  00        BRK
.C:5d3f  AA        TAX
.C:5d40  00        BRK
.C:5d41  40        RTI
.C:5d42  00        BRK
.C:5d43  00        BRK
.C:5d44  20 00 00  JSR $0000
.C:5d47  20 00 00  JSR $0000
.C:5d4a  10 00     BPL $5D4C
.C:5d4c  00        BRK
.C:5d4d  10 00     BPL $5D4F
.C:5d4f  00        BRK
.C:5d50  08        PHP
.C:5d51  00        BRK
.C:5d52  00        BRK
.C:5d53  08        PHP
.C:5d54  00        BRK
.C:5d55  00        BRK
.C:5d56  04         $04
.C:5d57  00        BRK
.C:5d58  00        BRK
.C:5d59  04         $04
.C:5d5a  00        BRK
.C:5d5b  00        BRK
.C:5d5c  02         $02
.C:5d5d  00        BRK
.C:5d5e  00        BRK
.C:5d5f  02         $02
.C:5d60  00        BRK
.C:5d61  00        BRK
.C:5d62  01 00     ORA ($00,X)
.C:5d64  00        BRK
.C:5d65  00        BRK
.C:5d66  80         $80
.C:5d67  00        BRK
.C:5d68  00        BRK
.C:5d69  80         $80
.C:5d6a  00        BRK
.C:5d6b  00        BRK
.C:5d6c  00        BRK
.C:5d6d  00        BRK
.C:5d6e  00        BRK
.C:5d6f  00        BRK
.C:5d70  00        BRK
.C:5d71  00        BRK
.C:5d72  00        BRK
.C:5d73  00        BRK
.C:5d74  00        BRK
.C:5d75  00        BRK
.C:5d76  00        BRK
.C:5d77  00        BRK
.C:5d78  00        BRK
.C:5d79  00        BRK
.C:5d7a  00        BRK
.C:5d7b  00        BRK
.C:5d7c  00        BRK
.C:5d7d  00        BRK
.C:5d7e  00        BRK
.C:5d7f  AA        TAX
.C:5d80  80         $80
.C:5d81  00        BRK
.C:5d82  00        BRK
.C:5d83  80         $80
.C:5d84  00        BRK
.C:5d85  00        BRK
.C:5d86  40        RTI
.C:5d87  00        BRK
.C:5d88  00        BRK
.C:5d89  40        RTI
.C:5d8a  00        BRK
.C:5d8b  00        BRK
.C:5d8c  40        RTI
.C:5d8d  00        BRK
.C:5d8e  00        BRK
.C:5d8f  20 00 00  JSR $0000
.C:5d92  20 00 00  JSR $0000
.C:5d95  10 00     BPL $5D97
.C:5d97  00        BRK
.C:5d98  10 00     BPL $5D9A
.C:5d9a  00        BRK
.C:5d9b  08        PHP
.C:5d9c  00        BRK
.C:5d9d  00        BRK
.C:5d9e  04         $04
.C:5d9f  00        BRK
.C:5da0  00        BRK
.C:5da1  04         $04
.C:5da2  00        BRK
.C:5da3  00        BRK
.C:5da4  02         $02
.C:5da5  00        BRK
.C:5da6  00        BRK
.C:5da7  02         $02
.C:5da8  00        BRK
.C:5da9  00        BRK
.C:5daa  01 00     ORA ($00,X)
.C:5dac  00        BRK
.C:5dad  00        BRK
.C:5dae  80         $80
.C:5daf  00        BRK
.C:5db0  00        BRK
.C:5db1  80         $80
.C:5db2  00        BRK
.C:5db3  00        BRK
.C:5db4  40        RTI
.C:5db5  00        BRK
.C:5db6  00        BRK
.C:5db7  20 00 00  JSR $0000
.C:5dba  20 00 00  JSR $0000
.C:5dbd  10 00     BPL $5DBF
.C:5dbf  AA        TAX
.C:5dc0  00        BRK
.C:5dc1  10 00     BPL $5DC3
.C:5dc3  00        BRK
.C:5dc4  08        PHP
.C:5dc5  00        BRK
.C:5dc6  00        BRK
.C:5dc7  08        PHP
.C:5dc8  00        BRK
.C:5dc9  00        BRK
.C:5dca  04         $04
.C:5dcb  00        BRK
.C:5dcc  00        BRK
.C:5dcd  02         $02
.C:5dce  00        BRK
.C:5dcf  00        BRK
.C:5dd0  02         $02
.C:5dd1  00        BRK
.C:5dd2  00        BRK
.C:5dd3  01 00     ORA ($00,X)
.C:5dd5  00        BRK
.C:5dd6  01 00     ORA ($00,X)
.C:5dd8  00        BRK
.C:5dd9  00        BRK
.C:5dda  80         $80
.C:5ddb  00        BRK
.C:5ddc  00        BRK
.C:5ddd  40        RTI
.C:5dde  00        BRK
.C:5ddf  00        BRK
.C:5de0  20 00 00  JSR $0000
.C:5de3  20 00 00  JSR $0000
.C:5de6  10 00     BPL $5DE8
.C:5de8  00        BRK
.C:5de9  08        PHP
.C:5dea  00        BRK
.C:5deb  00        BRK
.C:5dec  00        BRK
.C:5ded  00        BRK
.C:5dee  00        BRK
.C:5def  00        BRK
.C:5df0  00        BRK
.C:5df1  00        BRK
.C:5df2  00        BRK
.C:5df3  00        BRK
.C:5df4  00        BRK
.C:5df5  00        BRK
.C:5df6  00        BRK
.C:5df7  00        BRK
.C:5df8  00        BRK
.C:5df9  00        BRK
.C:5dfa  00        BRK
.C:5dfb  00        BRK
.C:5dfc  00        BRK
.C:5dfd  00        BRK
.C:5dfe  00        BRK
.C:5dff  AA        TAX
.C:5e00  80         $80
.C:5e01  00        BRK
.C:5e02  00        BRK
.C:5e03  80         $80
.C:5e04  00        BRK
.C:5e05  00        BRK
.C:5e06  40        RTI
.C:5e07  00        BRK
.C:5e08  00        BRK
.C:5e09  40        RTI
.C:5e0a  00        BRK
.C:5e0b  00        BRK
.C:5e0c  20 00 00  JSR $0000
.C:5e0f  20 00 00  JSR $0000
.C:5e12  10 00     BPL $5E14
.C:5e14  00        BRK
.C:5e15  10 00     BPL $5E17
.C:5e17  00        BRK
.C:5e18  08        PHP
.C:5e19  00        BRK
.C:5e1a  00        BRK
.C:5e1b  04         $04
.C:5e1c  00        BRK
.C:5e1d  00        BRK
.C:5e1e  04         $04
.C:5e1f  00        BRK
.C:5e20  00        BRK
.C:5e21  02         $02
.C:5e22  00        BRK
.C:5e23  00        BRK
.C:5e24  02         $02
.C:5e25  00        BRK
.C:5e26  00        BRK
.C:5e27  01 00     ORA ($00,X)
.C:5e29  00        BRK
.C:5e2a  00        BRK
.C:5e2b  80         $80
.C:5e2c  00        BRK
.C:5e2d  00        BRK
.C:5e2e  80         $80
.C:5e2f  00        BRK
.C:5e30  00        BRK
.C:5e31  40        RTI
.C:5e32  00        BRK
.C:5e33  00        BRK
.C:5e34  20 00 00  JSR $0000
.C:5e37  10 00     BPL $5E39
.C:5e39  00        BRK
.C:5e3a  10 00     BPL $5E3C
.C:5e3c  00        BRK
.C:5e3d  08        PHP
.C:5e3e  00        BRK
.C:5e3f  AA        TAX
.C:5e40  00        BRK
.C:5e41  08        PHP
.C:5e42  00        BRK
.C:5e43  00        BRK
.C:5e44  04         $04
.C:5e45  00        BRK
.C:5e46  00        BRK
.C:5e47  04         $04
.C:5e48  00        BRK
.C:5e49  00        BRK
.C:5e4a  02         $02
.C:5e4b  00        BRK
.C:5e4c  00        BRK
.C:5e4d  01 00     ORA ($00,X)
.C:5e4f  00        BRK
.C:5e50  00        BRK
.C:5e51  80         $80
.C:5e52  00        BRK
.C:5e53  00        BRK
.C:5e54  80         $80
.C:5e55  00        BRK
.C:5e56  00        BRK
.C:5e57  40        RTI
.C:5e58  00        BRK
.C:5e59  00        BRK
.C:5e5a  20 00 00  JSR $0000
.C:5e5d  10 00     BPL $5E5F
.C:5e5f  00        BRK
.C:5e60  08        PHP
.C:5e61  00        BRK
.C:5e62  00        BRK
.C:5e63  06 00     ASL $00
.C:5e65  00        BRK
.C:5e66  01 00     ORA ($00,X)
.C:5e68  00        BRK
.C:5e69  00        BRK
.C:5e6a  00        BRK
.C:5e6b  00        BRK
.C:5e6c  00        BRK
.C:5e6d  00        BRK
.C:5e6e  00        BRK
.C:5e6f  00        BRK
.C:5e70  00        BRK
.C:5e71  00        BRK
.C:5e72  00        BRK
.C:5e73  00        BRK
.C:5e74  00        BRK
.C:5e75  00        BRK
.C:5e76  00        BRK
.C:5e77  00        BRK
.C:5e78  00        BRK
.C:5e79  00        BRK
.C:5e7a  00        BRK
.C:5e7b  00        BRK
.C:5e7c  00        BRK
.C:5e7d  00        BRK
.C:5e7e  00        BRK
.C:5e7f  AA        TAX
.C:5e80  80         $80
.C:5e81  00        BRK
.C:5e82  00        BRK
.C:5e83  80         $80
.C:5e84  00        BRK
.C:5e85  00        BRK
.C:5e86  40        RTI
.C:5e87  00        BRK
.C:5e88  00        BRK
.C:5e89  40        RTI
.C:5e8a  00        BRK
.C:5e8b  00        BRK
.C:5e8c  20 00 00  JSR $0000
.C:5e8f  10 00     BPL $5E91
.C:5e91  00        BRK
.C:5e92  10 00     BPL $5E94
.C:5e94  00        BRK
.C:5e95  08        PHP
.C:5e96  00        BRK
.C:5e97  00        BRK
.C:5e98  08        PHP
.C:5e99  00        BRK
.C:5e9a  00        BRK
.C:5e9b  04         $04
.C:5e9c  00        BRK
.C:5e9d  00        BRK
.C:5e9e  02         $02
.C:5e9f  00        BRK
.C:5ea0  00        BRK
.C:5ea1  01 00     ORA ($00,X)
.C:5ea3  00        BRK
.C:5ea4  00        BRK
.C:5ea5  80         $80
.C:5ea6  00        BRK
.C:5ea7  00        BRK
.C:5ea8  80         $80
.C:5ea9  00        BRK
.C:5eaa  00        BRK
.C:5eab  40        RTI
.C:5eac  00        BRK
.C:5ead  00        BRK
.C:5eae  20 00 00  JSR $0000
.C:5eb1  10 00     BPL $5EB3
.C:5eb3  00        BRK
.C:5eb4  08        PHP
.C:5eb5  00        BRK
.C:5eb6  00        BRK
.C:5eb7  04         $04
.C:5eb8  00        BRK
.C:5eb9  00        BRK
.C:5eba  02         $02
.C:5ebb  00        BRK
.C:5ebc  00        BRK
.C:5ebd  01 00     ORA ($00,X)
.C:5ebf  AA        TAX
.C:5ec0  00        BRK
.C:5ec1  08        PHP
.C:5ec2  00        BRK
.C:5ec3  00        BRK
.C:5ec4  04         $04
.C:5ec5  00        BRK
.C:5ec6  00        BRK
.C:5ec7  02         $02
.C:5ec8  00        BRK
.C:5ec9  00        BRK
.C:5eca  01 00     ORA ($00,X)
.C:5ecc  00        BRK
.C:5ecd  00        BRK
.C:5ece  80         $80
.C:5ecf  00        BRK
.C:5ed0  00        BRK
.C:5ed1  40        RTI
.C:5ed2  00        BRK
.C:5ed3  00        BRK
.C:5ed4  20 00 00  JSR $0000
.C:5ed7  10 00     BPL $5ED9
.C:5ed9  00        BRK
.C:5eda  08        PHP
.C:5edb  00        BRK
.C:5edc  00        BRK
.C:5edd  04         $04
.C:5ede  00        BRK
.C:5edf  00        BRK
.C:5ee0  03         $03
.C:5ee1  00        BRK
.C:5ee2  00        BRK
.C:5ee3  00        BRK
.C:5ee4  00        BRK
.C:5ee5  00        BRK
.C:5ee6  00        BRK
.C:5ee7  00        BRK
.C:5ee8  00        BRK
.C:5ee9  00        BRK
.C:5eea  00        BRK
.C:5eeb  00        BRK
.C:5eec  00        BRK
.C:5eed  00        BRK
.C:5eee  00        BRK
.C:5eef  00        BRK
.C:5ef0  00        BRK
.C:5ef1  00        BRK
.C:5ef2  00        BRK
.C:5ef3  00        BRK
.C:5ef4  00        BRK
.C:5ef5  00        BRK
.C:5ef6  00        BRK
.C:5ef7  00        BRK
.C:5ef8  00        BRK
.C:5ef9  00        BRK
.C:5efa  00        BRK
.C:5efb  00        BRK
.C:5efc  00        BRK
.C:5efd  00        BRK
.C:5efe  00        BRK
.C:5eff  AA        TAX
.C:5f00  00        BRK
.C:5f01  00        BRK
.C:5f02  01 00     ORA ($00,X)
.C:5f04  00        BRK
.C:5f05  01 00     ORA ($00,X)
.C:5f07  00        BRK
.C:5f08  01 00     ORA ($00,X)
.C:5f0a  00        BRK
.C:5f0b  01 00     ORA ($00,X)
.C:5f0d  00        BRK
.C:5f0e  01 00     ORA ($00,X)
.C:5f10  00        BRK
.C:5f11  01 00     ORA ($00,X)
.C:5f13  00        BRK
.C:5f14  01 00     ORA ($00,X)
.C:5f16  00        BRK
.C:5f17  01 00     ORA ($00,X)
.C:5f19  00        BRK
.C:5f1a  01 00     ORA ($00,X)
.C:5f1c  00        BRK
.C:5f1d  01 00     ORA ($00,X)
.C:5f1f  00        BRK
.C:5f20  01 00     ORA ($00,X)
.C:5f22  00        BRK
.C:5f23  01 00     ORA ($00,X)
.C:5f25  00        BRK
.C:5f26  01 00     ORA ($00,X)
.C:5f28  00        BRK
.C:5f29  01 00     ORA ($00,X)
.C:5f2b  00        BRK
.C:5f2c  01 00     ORA ($00,X)
.C:5f2e  00        BRK
.C:5f2f  01 00     ORA ($00,X)
.C:5f31  00        BRK
.C:5f32  01 00     ORA ($00,X)
.C:5f34  00        BRK
.C:5f35  01 00     ORA ($00,X)
.C:5f37  00        BRK
.C:5f38  01 00     ORA ($00,X)
.C:5f3a  00        BRK
.C:5f3b  01 00     ORA ($00,X)
.C:5f3d  00        BRK
.C:5f3e  01 AA     ORA ($AA,X)
.C:5f40  00        BRK
.C:5f41  00        BRK
.C:5f42  01 00     ORA ($00,X)
.C:5f44  00        BRK
.C:5f45  01 00     ORA ($00,X)
.C:5f47  00        BRK
.C:5f48  02         $02
.C:5f49  00        BRK
.C:5f4a  00        BRK
.C:5f4b  02         $02
.C:5f4c  00        BRK
.C:5f4d  00        BRK
.C:5f4e  02         $02
.C:5f4f  00        BRK
.C:5f50  00        BRK
.C:5f51  02         $02
.C:5f52  00        BRK
.C:5f53  00        BRK
.C:5f54  02         $02
.C:5f55  00        BRK
.C:5f56  00        BRK
.C:5f57  02         $02
.C:5f58  00        BRK
.C:5f59  00        BRK
.C:5f5a  02         $02
.C:5f5b  00        BRK
.C:5f5c  00        BRK
.C:5f5d  02         $02
.C:5f5e  00        BRK
.C:5f5f  00        BRK
.C:5f60  04         $04
.C:5f61  00        BRK
.C:5f62  00        BRK
.C:5f63  04         $04
.C:5f64  00        BRK
.C:5f65  00        BRK
.C:5f66  04         $04
.C:5f67  00        BRK
.C:5f68  00        BRK
.C:5f69  04         $04
.C:5f6a  00        BRK
.C:5f6b  00        BRK
.C:5f6c  04         $04
.C:5f6d  00        BRK
.C:5f6e  00        BRK
.C:5f6f  00        BRK
.C:5f70  00        BRK
.C:5f71  00        BRK
.C:5f72  00        BRK
.C:5f73  00        BRK
.C:5f74  00        BRK
.C:5f75  00        BRK
.C:5f76  00        BRK
.C:5f77  00        BRK
.C:5f78  00        BRK
.C:5f79  00        BRK
.C:5f7a  00        BRK
.C:5f7b  00        BRK
.C:5f7c  00        BRK
.C:5f7d  00        BRK
.C:5f7e  00        BRK
.C:5f7f  AA        TAX
.C:5f80  00        BRK
.C:5f81  00        BRK
.C:5f82  01 00     ORA ($00,X)
.C:5f84  00        BRK
.C:5f85  01 00     ORA ($00,X)
.C:5f87  00        BRK
.C:5f88  01 00     ORA ($00,X)
.C:5f8a  00        BRK
.C:5f8b  01 00     ORA ($00,X)
.C:5f8d  00        BRK
.C:5f8e  01 00     ORA ($00,X)
.C:5f90  00        BRK
.C:5f91  01 00     ORA ($00,X)
.C:5f93  00        BRK
.C:5f94  02         $02
.C:5f95  00        BRK
.C:5f96  00        BRK
.C:5f97  02         $02
.C:5f98  00        BRK
.C:5f99  00        BRK
.C:5f9a  02         $02
.C:5f9b  00        BRK
.C:5f9c  00        BRK
.C:5f9d  02         $02
.C:5f9e  00        BRK
.C:5f9f  00        BRK
.C:5fa0  02         $02
.C:5fa1  00        BRK
.C:5fa2  00        BRK
.C:5fa3  02         $02
.C:5fa4  00        BRK
.C:5fa5  00        BRK
.C:5fa6  04         $04
.C:5fa7  00        BRK
.C:5fa8  00        BRK
.C:5fa9  04         $04
.C:5faa  00        BRK
.C:5fab  00        BRK
.C:5fac  04         $04
.C:5fad  00        BRK
.C:5fae  00        BRK
.C:5faf  04         $04
.C:5fb0  00        BRK
.C:5fb1  00        BRK
.C:5fb2  04         $04
.C:5fb3  00        BRK
.C:5fb4  00        BRK
.C:5fb5  04         $04
.C:5fb6  00        BRK
.C:5fb7  00        BRK
.C:5fb8  08        PHP
.C:5fb9  00        BRK
.C:5fba  00        BRK
.C:5fbb  08        PHP
.C:5fbc  00        BRK
.C:5fbd  00        BRK
.C:5fbe  08        PHP
.C:5fbf  AA        TAX
.C:5fc0  00        BRK
.C:5fc1  00        BRK
.C:5fc2  08        PHP
.C:5fc3  00        BRK
.C:5fc4  00        BRK
.C:5fc5  08        PHP
.C:5fc6  00        BRK
.C:5fc7  00        BRK
.C:5fc8  08        PHP
.C:5fc9  00        BRK
.C:5fca  00        BRK
.C:5fcb  10 00     BPL $5FCD
.C:5fcd  00        BRK
.C:5fce  10 00     BPL $5FD0
.C:5fd0  00        BRK
.C:5fd1  10 00     BPL $5FD3
.C:5fd3  00        BRK
.C:5fd4  10 00     BPL $5FD6
.C:5fd6  00        BRK
.C:5fd7  10 00     BPL $5FD9
.C:5fd9  00        BRK
.C:5fda  10 00     BPL $5FDC
.C:5fdc  00        BRK
.C:5fdd  20 00 00  JSR $0000
.C:5fe0  20 00 00  JSR $0000
.C:5fe3  20 00 00  JSR $0000
.C:5fe6  20 00 00  JSR $0000
.C:5fe9  20 00 00  JSR $0000
.C:5fec  20 00 00  JSR $0000
.C:5fef  00        BRK
.C:5ff0  00        BRK
.C:5ff1  00        BRK
.C:5ff2  00        BRK
.C:5ff3  00        BRK
.C:5ff4  00        BRK
.C:5ff5  00        BRK
.C:5ff6  00        BRK
.C:5ff7  00        BRK
.C:5ff8  00        BRK
.C:5ff9  00        BRK
.C:5ffa  00        BRK
.C:5ffb  00        BRK
.C:5ffc  00        BRK
.C:5ffd  00        BRK
.C:5ffe  00        BRK
.C:5fff  AA        TAX
.C:6000  00        BRK
.C:6001  00        BRK
.C:6002  01 00     ORA ($00,X)
.C:6004  00        BRK
.C:6005  01 00     ORA ($00,X)
.C:6007  00        BRK
.C:6008  01 00     ORA ($00,X)
.C:600a  00        BRK
.C:600b  01 00     ORA ($00,X)
.C:600d  00        BRK
.C:600e  02         $02
.C:600f  00        BRK
.C:6010  00        BRK
.C:6011  02         $02
.C:6012  00        BRK
.C:6013  00        BRK
.C:6014  02         $02
.C:6015  00        BRK
.C:6016  00        BRK
.C:6017  02         $02
.C:6018  00        BRK
.C:6019  00        BRK
.C:601a  04         $04
.C:601b  00        BRK
.C:601c  00        BRK
.C:601d  04         $04
.C:601e  00        BRK
.C:601f  00        BRK
.C:6020  04         $04
.C:6021  00        BRK
.C:6022  00        BRK
.C:6023  04         $04
.C:6024  00        BRK
.C:6025  00        BRK
.C:6026  08        PHP
.C:6027  00        BRK
.C:6028  00        BRK
.C:6029  08        PHP
.C:602a  00        BRK
.C:602b  00        BRK
.C:602c  08        PHP
.C:602d  00        BRK
.C:602e  00        BRK
.C:602f  10 00     BPL $6031
.C:6031  00        BRK
.C:6032  10 00     BPL $6034
.C:6034  00        BRK
.C:6035  10 00     BPL $6037
.C:6037  00        BRK
.C:6038  10 00     BPL $603A
.C:603a  00        BRK
.C:603b  20 00 00  JSR $0000
.C:603e  20 AA 00  JSR $00AA
.C:6041  00        BRK
.C:6042  20 00 00  JSR $0000
.C:6045  20 00 00  JSR $0000
.C:6048  40        RTI
.C:6049  00        BRK
.C:604a  00        BRK
.C:604b  40        RTI
.C:604c  00        BRK
.C:604d  00        BRK
.C:604e  40        RTI
.C:604f  00        BRK
.C:6050  00        BRK
.C:6051  40        RTI
.C:6052  00        BRK
.C:6053  00        BRK
.C:6054  80         $80
.C:6055  00        BRK
.C:6056  00        BRK
.C:6057  80         $80
.C:6058  00        BRK
.C:6059  00        BRK
.C:605a  80         $80
.C:605b  00        BRK
.C:605c  00        BRK
.C:605d  80         $80
.C:605e  00        BRK
.C:605f  01 00     ORA ($00,X)
.C:6061  00        BRK
.C:6062  01 00     ORA ($00,X)
.C:6064  00        BRK
.C:6065  01 00     ORA ($00,X)
.C:6067  00        BRK
.C:6068  01 00     ORA ($00,X)
.C:606a  00        BRK
.C:606b  02         $02
.C:606c  00        BRK
.C:606d  00        BRK
.C:606e  00        BRK
.C:606f  00        BRK
.C:6070  00        BRK
.C:6071  00        BRK
.C:6072  00        BRK
.C:6073  00        BRK
.C:6074  00        BRK
.C:6075  00        BRK
.C:6076  00        BRK
.C:6077  00        BRK
.C:6078  00        BRK
.C:6079  00        BRK
.C:607a  00        BRK
.C:607b  00        BRK
.C:607c  00        BRK
.C:607d  00        BRK
.C:607e  00        BRK
.C:607f  AA        TAX
.C:6080  00        BRK
.C:6081  00        BRK
.C:6082  01 00     ORA ($00,X)
.C:6084  00        BRK
.C:6085  01 00     ORA ($00,X)
.C:6087  00        BRK
.C:6088  02         $02
.C:6089  00        BRK
.C:608a  00        BRK
.C:608b  02         $02
.C:608c  00        BRK
.C:608d  00        BRK
.C:608e  02         $02
.C:608f  00        BRK
.C:6090  00        BRK
.C:6091  04         $04
.C:6092  00        BRK
.C:6093  00        BRK
.C:6094  04         $04
.C:6095  00        BRK
.C:6096  00        BRK
.C:6097  04         $04
.C:6098  00        BRK
.C:6099  00        BRK
.C:609a  08        PHP
.C:609b  00        BRK
.C:609c  00        BRK
.C:609d  08        PHP
.C:609e  00        BRK
.C:609f  00        BRK
.C:60a0  08        PHP
.C:60a1  00        BRK
.C:60a2  00        BRK
.C:60a3  10 00     BPL $60A5
.C:60a5  00        BRK
.C:60a6  10 00     BPL $60A8
.C:60a8  00        BRK
.C:60a9  10 00     BPL $60AB
.C:60ab  00        BRK
.C:60ac  20 00 00  JSR $0000
.C:60af  20 00 00  JSR $0000
.C:60b2  40        RTI
.C:60b3  00        BRK
.C:60b4  00        BRK
.C:60b5  40        RTI
.C:60b6  00        BRK
.C:60b7  00        BRK
.C:60b8  40        RTI
.C:60b9  00        BRK
.C:60ba  00        BRK
.C:60bb  80         $80
.C:60bc  00        BRK
.C:60bd  00        BRK
.C:60be  80         $80
.C:60bf  AA        TAX
.C:60c0  00        BRK
.C:60c1  00        BRK
.C:60c2  80         $80
.C:60c3  00        BRK
.C:60c4  00        BRK
.C:60c5  80         $80
.C:60c6  00        BRK
.C:60c7  01 00     ORA ($00,X)
.C:60c9  00        BRK
.C:60ca  01 00     ORA ($00,X)
.C:60cc  00        BRK
.C:60cd  01 00     ORA ($00,X)
.C:60cf  00        BRK
.C:60d0  02         $02
.C:60d1  00        BRK
.C:60d2  00        BRK
.C:60d3  02         $02
.C:60d4  00        BRK
.C:60d5  00        BRK
.C:60d6  02         $02
.C:60d7  00        BRK
.C:60d8  00        BRK
.C:60d9  04         $04
.C:60da  00        BRK
.C:60db  00        BRK
.C:60dc  04         $04
.C:60dd  00        BRK
.C:60de  00        BRK
.C:60df  08        PHP
.C:60e0  00        BRK
.C:60e1  00        BRK
.C:60e2  08        PHP
.C:60e3  00        BRK
.C:60e4  00        BRK
.C:60e5  08        PHP
.C:60e6  00        BRK
.C:60e7  00        BRK
.C:60e8  10 00     BPL $60EA
.C:60ea  00        BRK
.C:60eb  10 00     BPL $60ED
.C:60ed  00        BRK
.C:60ee  00        BRK
.C:60ef  00        BRK
.C:60f0  00        BRK
.C:60f1  00        BRK
.C:60f2  00        BRK
.C:60f3  00        BRK
.C:60f4  00        BRK
.C:60f5  00        BRK
.C:60f6  00        BRK
.C:60f7  00        BRK
.C:60f8  00        BRK
.C:60f9  00        BRK
.C:60fa  00        BRK
.C:60fb  00        BRK
.C:60fc  00        BRK
.C:60fd  00        BRK
.C:60fe  00        BRK
.C:60ff  AA        TAX
.C:6100  00        BRK
.C:6101  00        BRK
.C:6102  01 00     ORA ($00,X)
.C:6104  00        BRK
.C:6105  01 00     ORA ($00,X)
.C:6107  00        BRK
.C:6108  02         $02
.C:6109  00        BRK
.C:610a  00        BRK
.C:610b  02         $02
.C:610c  00        BRK
.C:610d  00        BRK
.C:610e  02         $02
.C:610f  00        BRK
.C:6110  00        BRK
.C:6111  04         $04
.C:6112  00        BRK
.C:6113  00        BRK
.C:6114  04         $04
.C:6115  00        BRK
.C:6116  00        BRK
.C:6117  08        PHP
.C:6118  00        BRK
.C:6119  00        BRK
.C:611a  08        PHP
.C:611b  00        BRK
.C:611c  00        BRK
.C:611d  10 00     BPL $611F
.C:611f  00        BRK
.C:6120  10 00     BPL $6122
.C:6122  00        BRK
.C:6123  20 00 00  JSR $0000
.C:6126  20 00 00  JSR $0000
.C:6129  40        RTI
.C:612a  00        BRK
.C:612b  00        BRK
.C:612c  40        RTI
.C:612d  00        BRK
.C:612e  00        BRK
.C:612f  80         $80
.C:6130  00        BRK
.C:6131  00        BRK
.C:6132  80         $80
.C:6133  00        BRK
.C:6134  00        BRK
.C:6135  80         $80
.C:6136  00        BRK
.C:6137  01 00     ORA ($00,X)
.C:6139  00        BRK
.C:613a  01 00     ORA ($00,X)
.C:613c  00        BRK
.C:613d  02         $02
.C:613e  00        BRK
.C:613f  AA        TAX
.C:6140  00        BRK
.C:6141  02         $02
.C:6142  00        BRK
.C:6143  00        BRK
.C:6144  04         $04
.C:6145  00        BRK
.C:6146  00        BRK
.C:6147  04         $04
.C:6148  00        BRK
.C:6149  00        BRK
.C:614a  08        PHP
.C:614b  00        BRK
.C:614c  00        BRK
.C:614d  08        PHP
.C:614e  00        BRK
.C:614f  00        BRK
.C:6150  10 00     BPL $6152
.C:6152  00        BRK
.C:6153  10 00     BPL $6155
.C:6155  00        BRK
.C:6156  20 00 00  JSR $0000
.C:6159  20 00 00  JSR $0000
.C:615c  40        RTI
.C:615d  00        BRK
.C:615e  00        BRK
.C:615f  40        RTI
.C:6160  00        BRK
.C:6161  00        BRK
.C:6162  80         $80
.C:6163  00        BRK
.C:6164  01 00     ORA ($00,X)
.C:6166  00        BRK
.C:6167  01 00     ORA ($00,X)
.C:6169  00        BRK
.C:616a  00        BRK
.C:616b  00        BRK
.C:616c  00        BRK
.C:616d  00        BRK
.C:616e  00        BRK
.C:616f  00        BRK
.C:6170  00        BRK
.C:6171  00        BRK
.C:6172  00        BRK
.C:6173  00        BRK
.C:6174  00        BRK
.C:6175  00        BRK
.C:6176  00        BRK
.C:6177  00        BRK
.C:6178  00        BRK
.C:6179  00        BRK
.C:617a  00        BRK
.C:617b  00        BRK
.C:617c  00        BRK
.C:617d  00        BRK
.C:617e  00        BRK
.C:617f  AA        TAX
.C:6180  00        BRK
.C:6181  00        BRK
.C:6182  01 00     ORA ($00,X)
.C:6184  00        BRK
.C:6185  01 00     ORA ($00,X)
.C:6187  00        BRK
.C:6188  02         $02
.C:6189  00        BRK
.C:618a  00        BRK
.C:618b  02         $02
.C:618c  00        BRK
.C:618d  00        BRK
.C:618e  02         $02
.C:618f  00        BRK
.C:6190  00        BRK
.C:6191  04         $04
.C:6192  00        BRK
.C:6193  00        BRK
.C:6194  04         $04
.C:6195  00        BRK
.C:6196  00        BRK
.C:6197  08        PHP
.C:6198  00        BRK
.C:6199  00        BRK
.C:619a  08        PHP
.C:619b  00        BRK
.C:619c  00        BRK
.C:619d  10 00     BPL $619F
.C:619f  00        BRK
.C:61a0  20 00 00  JSR $0000
.C:61a3  20 00 00  JSR $0000
.C:61a6  40        RTI
.C:61a7  00        BRK
.C:61a8  00        BRK
.C:61a9  40        RTI
.C:61aa  00        BRK
.C:61ab  00        BRK
.C:61ac  80         $80
.C:61ad  00        BRK
.C:61ae  01 00     ORA ($00,X)
.C:61b0  00        BRK
.C:61b1  01 00     ORA ($00,X)
.C:61b3  00        BRK
.C:61b4  02         $02
.C:61b5  00        BRK
.C:61b6  00        BRK
.C:61b7  04         $04
.C:61b8  00        BRK
.C:61b9  00        BRK
.C:61ba  04         $04
.C:61bb  00        BRK
.C:61bc  00        BRK
.C:61bd  08        PHP
.C:61be  00        BRK
.C:61bf  AA        TAX
.C:61c0  00        BRK
.C:61c1  08        PHP
.C:61c2  00        BRK
.C:61c3  00        BRK
.C:61c4  10 00     BPL $61C6
.C:61c6  00        BRK
.C:61c7  10 00     BPL $61C9
.C:61c9  00        BRK
.C:61ca  20 00 00  JSR $0000
.C:61cd  40        RTI
.C:61ce  00        BRK
.C:61cf  00        BRK
.C:61d0  40        RTI
.C:61d1  00        BRK
.C:61d2  00        BRK
.C:61d3  80         $80
.C:61d4  00        BRK
.C:61d5  00        BRK
.C:61d6  80         $80
.C:61d7  00        BRK
.C:61d8  01 00     ORA ($00,X)
.C:61da  00        BRK
.C:61db  02         $02
.C:61dc  00        BRK
.C:61dd  00        BRK
.C:61de  04         $04
.C:61df  00        BRK
.C:61e0  00        BRK
.C:61e1  04         $04
.C:61e2  00        BRK
.C:61e3  00        BRK
.C:61e4  08        PHP
.C:61e5  00        BRK
.C:61e6  00        BRK
.C:61e7  10 00     BPL $61E9
.C:61e9  00        BRK
.C:61ea  00        BRK
.C:61eb  00        BRK
.C:61ec  00        BRK
.C:61ed  00        BRK
.C:61ee  00        BRK
.C:61ef  00        BRK
.C:61f0  00        BRK
.C:61f1  00        BRK
.C:61f2  00        BRK
.C:61f3  00        BRK
.C:61f4  00        BRK
.C:61f5  00        BRK
.C:61f6  00        BRK
.C:61f7  00        BRK
.C:61f8  00        BRK
.C:61f9  00        BRK
.C:61fa  00        BRK
.C:61fb  00        BRK
.C:61fc  00        BRK
.C:61fd  00        BRK
.C:61fe  00        BRK
.C:61ff  AA        TAX
.C:6200  00        BRK
.C:6201  00        BRK
.C:6202  01 00     ORA ($00,X)
.C:6204  00        BRK
.C:6205  01 00     ORA ($00,X)
.C:6207  00        BRK
.C:6208  02         $02
.C:6209  00        BRK
.C:620a  00        BRK
.C:620b  02         $02
.C:620c  00        BRK
.C:620d  00        BRK
.C:620e  04         $04
.C:620f  00        BRK
.C:6210  00        BRK
.C:6211  04         $04
.C:6212  00        BRK
.C:6213  00        BRK
.C:6214  08        PHP
.C:6215  00        BRK
.C:6216  00        BRK
.C:6217  08        PHP
.C:6218  00        BRK
.C:6219  00        BRK
.C:621a  10 00     BPL $621C
.C:621c  00        BRK
.C:621d  20 00 00  JSR $0000
.C:6220  20 00 00  JSR $0000
.C:6223  40        RTI
.C:6224  00        BRK
.C:6225  00        BRK
.C:6226  40        RTI
.C:6227  00        BRK
.C:6228  00        BRK
.C:6229  80         $80
.C:622a  00        BRK
.C:622b  01 00     ORA ($00,X)
.C:622d  00        BRK
.C:622e  01 00     ORA ($00,X)
.C:6230  00        BRK
.C:6231  02         $02
.C:6232  00        BRK
.C:6233  00        BRK
.C:6234  04         $04
.C:6235  00        BRK
.C:6236  00        BRK
.C:6237  08        PHP
.C:6238  00        BRK
.C:6239  00        BRK
.C:623a  08        PHP
.C:623b  00        BRK
.C:623c  00        BRK
.C:623d  10 00     BPL $623F
.C:623f  AA        TAX
.C:6240  00        BRK
.C:6241  10 00     BPL $6243
.C:6243  00        BRK
.C:6244  20 00 00  JSR $0000
.C:6247  20 00 00  JSR $0000
.C:624a  40        RTI
.C:624b  00        BRK
.C:624c  00        BRK
.C:624d  80         $80
.C:624e  00        BRK
.C:624f  01 00     ORA ($00,X)
.C:6251  00        BRK
.C:6252  01 00     ORA ($00,X)
.C:6254  00        BRK
.C:6255  02         $02
.C:6256  00        BRK
.C:6257  00        BRK
.C:6258  04         $04
.C:6259  00        BRK
.C:625a  00        BRK
.C:625b  08        PHP
.C:625c  00        BRK
.C:625d  00        BRK
.C:625e  10 00     BPL $6260
.C:6260  00        BRK
.C:6261  60        RTS
.C:6262  00        BRK
.C:6263  00        BRK
.C:6264  80         $80
.C:6265  00        BRK
.C:6266  00        BRK
.C:6267  00        BRK
.C:6268  00        BRK
.C:6269  00        BRK
.C:626a  00        BRK
.C:626b  00        BRK
.C:626c  00        BRK
.C:626d  00        BRK
.C:626e  00        BRK
.C:626f  00        BRK
.C:6270  00        BRK
.C:6271  00        BRK
.C:6272  00        BRK
.C:6273  00        BRK
.C:6274  00        BRK
.C:6275  00        BRK
.C:6276  00        BRK
.C:6277  00        BRK
.C:6278  00        BRK
.C:6279  00        BRK
.C:627a  00        BRK
.C:627b  00        BRK
.C:627c  00        BRK
.C:627d  00        BRK
.C:627e  00        BRK
.C:627f  AA        TAX
.C:6280  00        BRK
.C:6281  00        BRK
.C:6282  01 00     ORA ($00,X)
.C:6284  00        BRK
.C:6285  01 00     ORA ($00,X)
.C:6287  00        BRK
.C:6288  02         $02
.C:6289  00        BRK
.C:628a  00        BRK
.C:628b  02         $02
.C:628c  00        BRK
.C:628d  00        BRK
.C:628e  04         $04
.C:628f  00        BRK
.C:6290  00        BRK
.C:6291  08        PHP
.C:6292  00        BRK
.C:6293  00        BRK
.C:6294  08        PHP
.C:6295  00        BRK
.C:6296  00        BRK
.C:6297  10 00     BPL $6299
.C:6299  00        BRK
.C:629a  10 00     BPL $629C
.C:629c  00        BRK
.C:629d  20 00 00  JSR $0000
.C:62a0  40        RTI
.C:62a1  00        BRK
.C:62a2  00        BRK
.C:62a3  80         $80
.C:62a4  00        BRK
.C:62a5  01 00     ORA ($00,X)
.C:62a7  00        BRK
.C:62a8  01 00     ORA ($00,X)
.C:62aa  00        BRK
.C:62ab  02         $02
.C:62ac  00        BRK
.C:62ad  00        BRK
.C:62ae  04         $04
.C:62af  00        BRK
.C:62b0  00        BRK
.C:62b1  08        PHP
.C:62b2  00        BRK
.C:62b3  00        BRK
.C:62b4  10 00     BPL $62B6
.C:62b6  00        BRK
.C:62b7  20 00 00  JSR $0000
.C:62ba  40        RTI
.C:62bb  00        BRK
.C:62bc  00        BRK
.C:62bd  80         $80
.C:62be  00        BRK
.C:62bf  AA        TAX
.C:62c0  00        BRK
.C:62c1  10 00     BPL $62C3
.C:62c3  00        BRK
.C:62c4  20 00 00  JSR $0000
.C:62c7  40        RTI
.C:62c8  00        BRK
.C:62c9  00        BRK
.C:62ca  80         $80
.C:62cb  00        BRK
.C:62cc  01 00     ORA ($00,X)
.C:62ce  00        BRK
.C:62cf  02         $02
.C:62d0  00        BRK
.C:62d1  00        BRK
.C:62d2  04         $04
.C:62d3  00        BRK
.C:62d4  00        BRK
.C:62d5  08        PHP
.C:62d6  00        BRK
.C:62d7  00        BRK
.C:62d8  10 00     BPL $62DA
.C:62da  00        BRK
.C:62db  20 00 00  JSR $0000
.C:62de  C0 00     CPY #$00
.C:62e0  00        BRK
.C:62e1  00        BRK
.C:62e2  00        BRK
.C:62e3  00        BRK
.C:62e4  00        BRK
.C:62e5  00        BRK
.C:62e6  00        BRK
.C:62e7  00        BRK
.C:62e8  00        BRK
.C:62e9  00        BRK
.C:62ea  00        BRK
.C:62eb  00        BRK
.C:62ec  00        BRK
.C:62ed  00        BRK
.C:62ee  00        BRK
.C:62ef  00        BRK
.C:62f0  00        BRK
.C:62f1  00        BRK
.C:62f2  00        BRK
.C:62f3  00        BRK
.C:62f4  00        BRK
.C:62f5  00        BRK
.C:62f6  00        BRK
.C:62f7  00        BRK
.C:62f8  00        BRK
.C:62f9  00        BRK
.C:62fa  00        BRK
.C:62fb  00        BRK
.C:62fc  00        BRK
.C:62fd  00        BRK
.C:62fe  00        BRK
.C:62ff  AA        TAX
.C:6300  0D 19 20  ORA $2019
.C:6303  08        PHP
.C:6304  05 12     ORA $12
.C:6306  0F         $0F
.C:6307  97         $97
.C:6308  5B         $5B
.C:6309  5F         $5F
.C:630a  5F         $5F
.C:630b  5F         $5F
.C:630c  5F         $5F
.C:630d  5F         $5F
.C:630e  5C         $5C
.C:630f  62         $62
.C:6310  13         $13
.C:6311  03         $03
.C:6312  0F         $0F
.C:6313  12         $12
.C:6314  05 61     ORA $61
.C:6316  62         $62
.C:6317  30 30     BMI $6349
.C:6319  30 30     BMI $634B
.C:631b  30 61     BMI $637E
.C:631d  5D 60 60  EOR $6060,X
.C:6320  60        RTS
.C:6321  60        RTS
.C:6322  60        RTS
.C:6323  5E 00 01  LSR $0100,X
.C:6326  02         $02
.C:6327  03         $03
.C:6328  04         $04
.C:6329  05 06     ORA $06
.C:632b  28        PLP
.C:632c  29 2A     AND #$2A
.C:632e  2B         $2B
.C:632f  2C 2D 2E  BIT $2E2D
.C:6332  50 51     BVC $6385
.C:6334  52         $52
.C:6335  53         $53
.C:6336  54         $54
.C:6337  55 56     EOR $56,X
.C:6339  78        SEI
.C:633a  79 7A 7B  ADC $7B7A,Y
.C:633d  7C         $7C
.C:633e  7D 7E 62  ADC $627E,X
.C:6341  82         $82
.C:6342  A2 C2     LDX #$C2
.C:6344  78        SEI
.C:6345  98        TYA
.C:6346  B8        CLV
.C:6347  D8        CLD
.C:6348  C6 C2     DEC $C2
.C:634a  BA        TSX
.C:634b  B2         $B2
.C:634c  AC A6 9E  LDY $9EA6
.C:634f  98        TYA
.C:6350  94 8A     STY $8A,X
.C:6352  82         $82
.C:6353  7C         $7C
.C:6354  76 6E     ROR $6E,X
.C:6356  66 62     ROR $62
.C:6358  62         $62
.C:6359  66 6E     ROR $6E
.C:635b  76 7C     ROR $7C,X
.C:635d  82         $82
.C:635e  8A        TXA
.C:635f  94 98     STY $98,X
.C:6361  9E         $9E
.C:6362  A6 AC     LDX $AC
.C:6364  B2         $B2
.C:6365  BA        TSX
.C:6366  C2         $C2
.C:6367  C6 7A     DEC $7A
.C:6369  78        SEI
.C:636a  76 74     ROR $74,X
.C:636c  72         $72
.C:636d  70 6E     BVS $63DD
.C:636f  6C 7C 7E  JMP ($7E7C)
.C:6372  80         $80
.C:6373  82         $82
.C:6374  84 86     STY $86
.C:6376  88        DEY
.C:6377  8A        TXA
.C:6378  8A        TXA
.C:6379  88        DEY
.C:637a  86 84     STX $84
.C:637c  82         $82
.C:637d  80         $80
.C:637e  7E 7C 6C  ROR $6C7C,X
.C:6381  6E 70 72  ROR $7270
.C:6384  74         $74
.C:6385  76 78     ROR $78,X
.C:6387  7A         $7A
.C:6388  7B         $7B
.C:6389  79 77 75  ADC $7577,Y
.C:638c  73         $73
.C:638d  71 6F     ADC ($6F),Y
.C:638f  6D 7D 7F  ADC $7F7D
.C:6392  81 83     STA ($83,X)
.C:6394  85 87     STA $87
.C:6396  89         $89
.C:6397  8B         $8B
.C:6398  8B         $8B
.C:6399  89         $89
.C:639a  87         $87
.C:639b  85 83     STA $83
.C:639d  81 7F     STA ($7F,X)
.C:639f  7D 6D 6F  ADC $6F6D,X
.C:63a2  71 73     ADC ($73),Y
.C:63a4  75 77     ADC $77,X
.C:63a6  79 7B B8  ADC $B87B,Y
.C:63a9  B8        CLV
.C:63aa  B8        CLV
.C:63ab  B8        CLV
.C:63ac  B8        CLV
.C:63ad  B8        CLV
.C:63ae  B8        CLV
.C:63af  B8        CLV
.C:63b0  8A        TXA
.C:63b1  8A        TXA
.C:63b2  8A        TXA
.C:63b3  8A        TXA
.C:63b4  8A        TXA
.C:63b5  8A        TXA
.C:63b6  8A        TXA
.C:63b7  8A        TXA
.C:63b8  8A        TXA
.C:63b9  8A        TXA
.C:63ba  8A        TXA
.C:63bb  8A        TXA
.C:63bc  8A        TXA
.C:63bd  8A        TXA
.C:63be  8A        TXA
.C:63bf  8A        TXA
.C:63c0  B8        CLV
.C:63c1  B8        CLV
.C:63c2  B8        CLV
.C:63c3  B8        CLV
.C:63c4  B8        CLV
.C:63c5  B8        CLV
.C:63c6  B8        CLV
.C:63c7  B8        CLV
.C:63c8  C0 BA     CPY #$BA
.C:63ca  B8        CLV
.C:63cb  B8        CLV
.C:63cc  B8        CLV
.C:63cd  B8        CLV
.C:63ce  B8        CLV
.C:63cf  B8        CLV
.C:63d0  8A        TXA
.C:63d1  8A        TXA
.C:63d2  8A        TXA
.C:63d3  8A        TXA
.C:63d4  8A        TXA
.C:63d5  8A        TXA
.C:63d6  88        DEY
.C:63d7  82         $82
.C:63d8  82         $82
.C:63d9  88        DEY
.C:63da  8A        TXA
.C:63db  8A        TXA
.C:63dc  8A        TXA
.C:63dd  8A        TXA
.C:63de  8A        TXA
.C:63df  8A        TXA
.C:63e0  B8        CLV
.C:63e1  B8        CLV
.C:63e2  B8        CLV
.C:63e3  B8        CLV
.C:63e4  B8        CLV
.C:63e5  B8        CLV
.C:63e6  BA        TSX
.C:63e7  C0 20     CPY #$20
.C:63e9  20 20 20  JSR $2020
.C:63ec  20 20 20  JSR $2020
.C:63ef  20 20 3E  JSR $3E20
.C:63f2  3E 3E 00  ROL $003E,X
.C:63f5  01 02     ORA ($02,X)
.C:63f7  28        PLP
.C:63f8  29 2A     AND #$2A
.C:63fa  50 51     BVC $644D
.C:63fc  52         $52
.C:63fd  78        SEI
.C:63fe  79 7A 00  ADC $007A,Y
.C:6401  00        BRK
.C:6402  00        BRK
.C:6403  00        BRK
.C:6404  00        BRK
.C:6405  00        BRK
.C:6406  00        BRK
.C:6407  00        BRK
.C:6408  00        BRK
.C:6409  00        BRK
.C:640a  00        BRK
.C:640b  00        BRK
.C:640c  00        BRK
.C:640d  00        BRK
.C:640e  00        BRK
.C:640f  03         $03
.C:6410  81 C0     STA ($C0,X)
.C:6412  07         $07
.C:6413  C3         $C3
.C:6414  E0 0E     CPX #$0E
.C:6416  E7         $E7
.C:6417  F0 0E     BEQ $6427
.C:6419  FF         $FF
.C:641a  F0 0D     BEQ $6429
.C:641c  FF         $FF
.C:641d  F0 0D     BEQ $642C
.C:641f  FF         $FF
.C:6420  F0 0E     BEQ $6430
.C:6422  FF         $FF
.C:6423  F0 06     BEQ $642B
.C:6425  FF         $FF
.C:6426  E0 07     CPX #$07
.C:6428  7F         $7F
.C:6429  E0 03     CPX #$03
.C:642b  7F         $7F
.C:642c  C0 03     CPY #$03
.C:642e  FF         $FF
.C:642f  C0 01     CPY #$01
.C:6431  FF         $FF
.C:6432  80         $80
.C:6433  00        BRK
.C:6434  FF         $FF
.C:6435  00        BRK
.C:6436  00        BRK
.C:6437  7E 00 00  ROR $0000,X
.C:643a  3C         $3C
.C:643b  00        BRK
.C:643c  00        BRK
.C:643d  18        CLC
.C:643e  00        BRK
.C:643f  AA        TAX
.C:6440  00        BRK
.C:6441  00        BRK
.C:6442  00        BRK
.C:6443  8B         $8B
.C:6444  E8        INX
.C:6445  3C         $3C
.C:6446  8A        TXA
.C:6447  08        PHP
.C:6448  22         $22
.C:6449  8A        TXA
.C:644a  08        PHP
.C:644b  22         $22
.C:644c  FB         $FB
.C:644d  88        DEY
.C:644e  3C         $3C
.C:644f  8A        TXA
.C:6450  08        PHP
.C:6451  20 8A 08  JSR $088A
.C:6454  20 8B EF  JSR $EF8B
.C:6457  A0 00     LDY #$00
.C:6459  00        BRK
.C:645a  00        BRK
.C:645b  70 00     BVS $645D
.C:645d  0E F8 00  ASL $00F8
.C:6460  1F         $1F
.C:6461  FC         $FC
.C:6462  00        BRK
.C:6463  3F         $3F
.C:6464  DE 00 7F  DEC $7F00,X
.C:6467  DE 00 7F  DEC $7F00,X
.C:646a  EF         $EF
.C:646b  00        BRK
.C:646c  FF         $FF
.C:646d  6F         $6F
.C:646e  81 FE     STA ($FE,X)
.C:6470  77         $77
.C:6471  81 FE     STA ($FE,X)
.C:6473  3F         $3F
.C:6474  C3         $C3
.C:6475  FC         $FC
.C:6476  0F         $0F
.C:6477  E7         $E7
.C:6478  F0 01     BEQ $647B
.C:647a  E7         $E7
.C:647b  80         $80
.C:647c  00        BRK
.C:647d  3C         $3C
.C:647e  00        BRK
.C:647f  AA        TAX
.C:6480  00        BRK
.C:6481  00        BRK
.C:6482  00        BRK
.C:6483  00        BRK
.C:6484  00        BRK
.C:6485  00        BRK
.C:6486  00        BRK
.C:6487  00        BRK
.C:6488  00        BRK
.C:6489  00        BRK
.C:648a  00        BRK
.C:648b  00        BRK
.C:648c  00        BRK
.C:648d  00        BRK
.C:648e  00        BRK
.C:648f  00        BRK
.C:6490  00        BRK
.C:6491  00        BRK
.C:6492  00        BRK
.C:6493  00        BRK
.C:6494  00        BRK
.C:6495  00        BRK
.C:6496  00        BRK
.C:6497  00        BRK
.C:6498  00        BRK
.C:6499  00        BRK
.C:649a  00        BRK
.C:649b  70 00     BVS $649D
.C:649d  0E F8 00  ASL $00F8
.C:64a0  1F         $1F
.C:64a1  FC         $FC
.C:64a2  00        BRK
.C:64a3  3F         $3F
.C:64a4  DE 00 7F  DEC $7F00,X
.C:64a7  DE 00 7F  DEC $7F00,X
.C:64aa  EF         $EF
.C:64ab  00        BRK
.C:64ac  FF         $FF
.C:64ad  6F         $6F
.C:64ae  81 FE     STA ($FE,X)
.C:64b0  77         $77
.C:64b1  81 FE     STA ($FE,X)
.C:64b3  3F         $3F
.C:64b4  C3         $C3
.C:64b5  FC         $FC
.C:64b6  0F         $0F
.C:64b7  E7         $E7
.C:64b8  F0 01     BEQ $64BB
.C:64ba  E7         $E7
.C:64bb  80         $80
.C:64bc  00        BRK
.C:64bd  3C         $3C
.C:64be  00        BRK
.C:64bf  AA        TAX
.C:64c0  00        BRK
.C:64c1  00        BRK
.C:64c2  00        BRK
.C:64c3  00        BRK
.C:64c4  00        BRK
.C:64c5  00        BRK
.C:64c6  00        BRK
.C:64c7  00        BRK
.C:64c8  00        BRK
.C:64c9  00        BRK
.C:64ca  00        BRK
.C:64cb  00        BRK
.C:64cc  00        BRK
.C:64cd  00        BRK
.C:64ce  00        BRK
.C:64cf  00        BRK
.C:64d0  00        BRK
.C:64d1  00        BRK
.C:64d2  07         $07
.C:64d3  00        BRK
.C:64d4  E0 0F     CPX #$0F
.C:64d6  81 F0     STA ($F0,X)
.C:64d8  1F         $1F
.C:64d9  C3         $C3
.C:64da  F8        SED
.C:64db  37         $37
.C:64dc  C3         $C3
.C:64dd  FC         $FC
.C:64de  37         $37
.C:64df  C3         $C3
.C:64e0  FC         $FC
.C:64e1  37         $37
.C:64e2  C3         $C3
.C:64e3  FC         $FC
.C:64e4  3B         $3B
.C:64e5  E7         $E7
.C:64e6  FC         $FC
.C:64e7  1B         $1B
.C:64e8  E7         $E7
.C:64e9  F8        SED
.C:64ea  1D E7 F8  ORA $F8E7,X
.C:64ed  0E E7 F0  ASL $F0E7
.C:64f0  07         $07
.C:64f1  E7         $E7
.C:64f2  E0 03     CPX #$03
.C:64f4  FF         $FF
.C:64f5  C0 01     CPY #$01
.C:64f7  FF         $FF
.C:64f8  80         $80
.C:64f9  00        BRK
.C:64fa  FF         $FF
.C:64fb  00        BRK
.C:64fc  00        BRK
.C:64fd  3C         $3C
.C:64fe  00        BRK
.C:64ff  AA        TAX
.C:6500  00        BRK
.C:6501  00        BRK
.C:6502  00        BRK
.C:6503  00        BRK
.C:6504  80         $80
.C:6505  00        BRK
.C:6506  02         $02
.C:6507  A0 40     LDY #$40
.C:6509  22         $22
.C:650a  A0 40     LDY #$40
.C:650c  22         $22
.C:650d  A0 40     LDY #$40
.C:650f  22         $22
.C:6510  A0 40     LDY #$40
.C:6512  20 80 40  JSR $4080
.C:6515  23         $23
.C:6516  F0 40     BEQ $6558
.C:6518  2F         $2F
.C:6519  FC         $FC
.C:651a  40        RTI
.C:651b  2F         $2F
.C:651c  FE 40 0F  INC $0F40,X
.C:651f  7E 80 0D  ROR $0D80,X
.C:6522  5E 00 0F  LSR $0F00,X
.C:6525  7C         $7C
.C:6526  00        BRK
.C:6527  0F         $0F
.C:6528  7C         $7C
.C:6529  00        BRK
.C:652a  0F         $0F
.C:652b  7C         $7C
.C:652c  00        BRK
.C:652d  0F         $0F
.C:652e  7C         $7C
.C:652f  00        BRK
.C:6530  0F         $0F
.C:6531  FC         $FC
.C:6532  00        BRK
.C:6533  0B         $0B
.C:6534  F8        SED
.C:6535  00        BRK
.C:6536  08        PHP
.C:6537  C8        INY
.C:6538  00        BRK
.C:6539  28        PLP
.C:653a  0A        ASL A
.C:653b  00        BRK
.C:653c  20 02 00  JSR $0002
.C:653f  AA        TAX
.C:6540  00        BRK
.C:6541  81 00     STA ($00,X)
.C:6543  02         $02
.C:6544  A1 00     LDA ($00,X)
.C:6546  02         $02
.C:6547  A1 00     LDA ($00,X)
.C:6549  02         $02
.C:654a  A1 00     LDA ($00,X)
.C:654c  02         $02
.C:654d  A1 00     LDA ($00,X)
.C:654f  08        PHP
.C:6550  81 00     STA ($00,X)
.C:6552  2B         $2B
.C:6553  F2         $F2
.C:6554  00        BRK
.C:6555  2F         $2F
.C:6556  FE 00 2F  INC $2F00,X
.C:6559  7E 00 2D  ROR $2D00,X
.C:655c  5C         $5C
.C:655d  00        BRK
.C:655e  0F         $0F
.C:655f  7C         $7C
.C:6560  00        BRK
.C:6561  0F         $0F
.C:6562  7C         $7C
.C:6563  00        BRK
.C:6564  0F         $0F
.C:6565  7E 00 0F  ROR $0F00,X
.C:6568  7E 00 0F  ROR $0F00,X
.C:656b  FE 00 0F  INC $0F00,X
.C:656e  FE 80 0B  INC $0B80,X
.C:6571  30 80     BMI $64F3
.C:6573  28        PLP
.C:6574  00        BRK
.C:6575  00        BRK
.C:6576  28        PLP
.C:6577  00        BRK
.C:6578  00        BRK
.C:6579  20 00 00  JSR $0000
.C:657c  20 00 00  JSR $0000
.C:657f  AA        TAX
.C:6580  00        BRK
.C:6581  80         $80
.C:6582  00        BRK
.C:6583  02         $02
.C:6584  A0 00     LDY #$00
.C:6586  02         $02
.C:6587  90 00     BCC $6589
.C:6589  02         $02
.C:658a  A0 00     LDY #$00
.C:658c  02         $02
.C:658d  A0 00     LDY #$00
.C:658f  00        BRK
.C:6590  A0 00     LDY #$00
.C:6592  13         $13
.C:6593  E0 00     CPX #$00
.C:6595  1E 80 00  ASL $0080,X
.C:6598  1E A0 00  ASL $00A0,X
.C:659b  1F         $1F
.C:659c  A9 54     LDA #$54
.C:659e  1F         $1F
.C:659f  E9 54     SBC #$54
.C:65a1  1F         $1F
.C:65a2  F0 00     BEQ $65A4
.C:65a4  1F         $1F
.C:65a5  F0 00     BEQ $65A7
.C:65a7  1F         $1F
.C:65a8  F0 00     BEQ $65AA
.C:65aa  0F         $0F
.C:65ab  F0 00     BEQ $65AD
.C:65ad  03         $03
.C:65ae  B0 00     BCS $65B0
.C:65b0  02         $02
.C:65b1  80         $80
.C:65b2  00        BRK
.C:65b3  02         $02
.C:65b4  80         $80
.C:65b5  00        BRK
.C:65b6  0A        ASL A
.C:65b7  80         $80
.C:65b8  00        BRK
.C:65b9  08        PHP
.C:65ba  80         $80
.C:65bb  00        BRK
.C:65bc  08        PHP
.C:65bd  A0 00     LDY #$00
.C:65bf  AA        TAX
.C:65c0  00        BRK
.C:65c1  80         $80
.C:65c2  00        BRK
.C:65c3  02         $02
.C:65c4  A0 00     LDY #$00
.C:65c6  02         $02
.C:65c7  90 00     BCC $65C9
.C:65c9  02         $02
.C:65ca  A0 00     LDY #$00
.C:65cc  02         $02
.C:65cd  A0 00     LDY #$00
.C:65cf  00        BRK
.C:65d0  A0 00     LDY #$00
.C:65d2  13         $13
.C:65d3  E0 14     CPX #$14
.C:65d5  1E 80 50  ASL $5080,X
.C:65d8  1E A1 40  ASL $40A1,X
.C:65db  1F         $1F
.C:65dc  A9 00     LDA #$00
.C:65de  1F         $1F
.C:65df  E8        INX
.C:65e0  00        BRK
.C:65e1  1F         $1F
.C:65e2  F0 00     BEQ $65E4
.C:65e4  1F         $1F
.C:65e5  F0 00     BEQ $65E7
.C:65e7  1F         $1F
.C:65e8  F0 00     BEQ $65EA
.C:65ea  0F         $0F
.C:65eb  FC         $FC
.C:65ec  00        BRK
.C:65ed  0B         $0B
.C:65ee  3A         $3A
.C:65ef  20 0A 0A  JSR $0A0A
.C:65f2  A0 0A     LDY #$0A
.C:65f4  02         $02
.C:65f5  A0 08     LDY #$08
.C:65f7  00        BRK
.C:65f8  80         $80
.C:65f9  08        PHP
.C:65fa  00        BRK
.C:65fb  00        BRK
.C:65fc  0A        ASL A
.C:65fd  00        BRK
.C:65fe  00        BRK
.C:65ff  AA        TAX
.C:6600  00        BRK
.C:6601  41 00     EOR ($00,X)
.C:6603  21 00     AND ($00,X)
.C:6605  01 0F     ORA ($0F,X)
.C:6607  01 75     ORA ($75,X)
.C:6609  56 01     LSR $01,X
.C:660b  75 56     ADC $56,X
.C:660d  01 60     ORA ($60,X)
.C:660f  02         $02
.C:6610  FE 45 20  INC $2045,X
.C:6613  20 46 20  JSR $2046
.C:6616  20 46 20  JSR $2046
.C:6619  20 56 48  JSR $4856
.C:661c  20 55 4A  JSR $4A55
.C:661f  49 57     EOR #$57
.C:6621  4B         $4B
.C:6622  4C 58 59  JMP $5958
.C:6625  4D 45 20  EOR $2045
.C:6628  20 20 20  JSR $2020
.C:662b  20 20 45  JSR $4520
.C:662e  20 20 46  JSR $4620
.C:6631  20 20 47  JSR $4720
.C:6634  48        PHA
.C:6635  20 52 4A  JSR $4A52
.C:6638  49 53     EOR #$53
.C:663a  4B         $4B
.C:663b  4C 54 4E  JMP $4E54
.C:663e  4D 20 20  EOR $2020
.C:6641  20 20 20  JSR $2020
.C:6644  20 45 20  JSR $2045
.C:6647  20 47 48  JSR $4847
.C:664a  20 4F 4A  JSR $4A4F
.C:664d  49 50     EOR #$50
.C:664f  4B         $4B
.C:6650  4C 51 4E  JMP $4E51
.C:6653  4D 00 01  EOR $0100
.C:6656  02         $02
.C:6657  28        PLP
.C:6658  29 2A     AND #$2A
.C:665a  50 51     BVC $66AD
.C:665c  52         $52
.C:665d  78        SEI
.C:665e  79 7A A0  ADC $A07A,Y
.C:6661  A1 A2     LDA ($A2,X)
.C:6663  C8        INY
.C:6664  C9 CA     CMP #$CA
.C:6666  F0 F1     BEQ $6659
.C:6668  F2         $F2
.C:6669  50 74     BVC $66DF
.C:666b  50 D8     BVC $6645
.C:666d  50 84     BVC $65F3
.C:666f  50 88     BVC $65F9
.C:6671  A0 A3     LDY #$A3
.C:6673  A1 A2     LDA ($A2,X)
.C:6675  AE B1 AF  LDX $AFB1
.C:6678  B0 A4     BCS $661E
.C:667a  A4 A4     LDY $A4
.C:667c  A4 A4     LDY $A4
.C:667e  A4 A5     LDY $A5
.C:6680  A5 A5     LDA $A5
.C:6682  A5 A6     LDA $A6
.C:6684  A6 A6     LDX $A6
.C:6686  A6 A6     LDX $A6
.C:6688  A6 B2     LDX $B2
.C:668a  B2         $B2
.C:668b  B2         $B2
.C:668c  B2         $B2
.C:668d  B2         $B2
.C:668e  B2         $B2
.C:668f  B3         $B3
.C:6690  B3         $B3
.C:6691  B3         $B3
.C:6692  B3         $B3
.C:6693  B4 B4     LDY $B4,X
.C:6695  B4 B4     LDY $B4,X
.C:6697  B4 B4     LDY $B4,X
.C:6699  80         $80
.C:669a  20 08 02  JSR $0208
.C:669d  00        BRK
.C:669e  01 02     ORA ($02,X)
.C:66a0  03         $03
.C:66a1  04         $04
.C:66a2  05 06     ORA $06
.C:66a4  28        PLP
.C:66a5  29 2A     AND #$2A
.C:66a7  2B         $2B
.C:66a8  2C 2D 2E  BIT $2E2D
.C:66ab  50 51     BVC $66FE
.C:66ad  52         $52
.C:66ae  53         $53
.C:66af  54         $54
.C:66b0  55 56     EOR $56,X
.C:66b2  78        SEI
.C:66b3  79 7A 7B  ADC $7B7A,Y
.C:66b6  7C         $7C
.C:66b7  7D 7E 5B  ADC $5B7E,X
.C:66ba  5F         $5F
.C:66bb  5F         $5F
.C:66bc  5F         $5F
.C:66bd  5F         $5F
.C:66be  5F         $5F
.C:66bf  5C         $5C
.C:66c0  62         $62
.C:66c1  20 20 20  JSR $2020
.C:66c4  20 66 61  JSR $6166
.C:66c7  62         $62
.C:66c8  64         $64
.C:66c9  64         $64
.C:66ca  64         $64
.C:66cb  64         $64
.C:66cc  65 61     ADC $61
.C:66ce  5D 60 60  EOR $6060,X
.C:66d1  60        RTS
.C:66d2  60        RTS
.C:66d3  60        RTS
.C:66d4  5E 0A 0A  LSR $0A0A,X
.C:66d7  0A        ASL A
.C:66d8  0A        ASL A
.C:66d9  0A        ASL A
.C:66da  0A        ASL A
.C:66db  0A        ASL A
.C:66dc  0A        ASL A
.C:66dd  0D 0D 0D  ORA $0D0D
.C:66e0  0D 0A 0A  ORA $0A0A
.C:66e3  0A        ASL A
.C:66e4  0A        ASL A
.C:66e5  0A        ASL A
.C:66e6  0A        ASL A
.C:66e7  0A        ASL A
.C:66e8  0A        ASL A
.C:66e9  0A        ASL A
.C:66ea  0A        ASL A
.C:66eb  0A        ASL A
.C:66ec  0A        ASL A
.C:66ed  0A        ASL A
.C:66ee  0A        ASL A
.C:66ef  0A        ASL A
.C:66f0  0A        ASL A
.C:66f1  07         $07
.C:66f2  05 14     ORA $14
.C:66f4  20 12 05  JSR $0512
.C:66f7  01 04     ORA ($04,X)
.C:66f9  19 0B 05  ORA $050B,Y
.C:66fc  19 02 0F  ORA $0F02,Y
.C:66ff  01 12     ORA ($12,X)
.C:6701  04         $04
.C:6702  20 20 03  JSR $0320
.C:6705  0F         $0F
.C:6706  0E 14 12  ASL $1214
.C:6709  0F         $0F
.C:670a  0C         $0C
.C:670b  13         $13
.C:670c  20 20 77  JSR $7720
.C:670f  20 76 20  JSR $2076
.C:6712  0A        ASL A
.C:6713  15 0D     ORA $0D,X
.C:6715  10 20     BPL $6737
.C:6717  20 20 20  JSR $2020
.C:671a  20 20 20  JSR $2020
.C:671d  20 20 20  JSR $2020
.C:6720  78        SEI
.C:6721  20 76 20  JSR $2076
.C:6724  0D 0F 16  ORA $160F
.C:6727  05 20     ORA $20
.C:6729  0C         $0C
.C:672a  05 06     ORA $06
.C:672c  14         $14
.C:672d  20 20 20  JSR $2020
.C:6730  20 20 79  JSR $7920
.C:6733  20 76 20  JSR $2076
.C:6736  0D 0F 16  ORA $160F
.C:6739  05 20     ORA $20
.C:673b  12         $12
.C:673c  09 07     ORA #$07
.C:673e  08        PHP
.C:673f  14         $14
.C:6740  20 20 0A  JSR $0A20
.C:6743  0F         $0F
.C:6744  19 13 14  ORA $1413,Y
.C:6747  09 03     ORA #$03
.C:6749  0B         $0B
.C:674a  20 0F 12  JSR $120F
.C:674d  20 0B 05  JSR $050B
.C:6750  19 02 0F  ORA $0F02,Y
.C:6753  01 12     ORA ($12,X)
.C:6755  04         $04
.C:6756  20 03 0F  JSR $0F03
.C:6759  0E 14 12  ASL $1214
.C:675c  0F         $0F
.C:675d  0C         $0C
.C:675e  13         $13
.C:675f  20 08 05  JSR $0508
.C:6762  12         $12
.C:6763  0F         $0F
.C:6764  20 20 20  JSR $2020
.C:6767  10 0C     BPL $6775
.C:6769  01 19     ORA ($19,X)
.C:676b  05 12     ORA $12
.C:676d  20 20 09  JSR $0920
.C:6770  0E 13 14  ASL $1413
.C:6773  12         $12
.C:6774  15 03     ORA $03,X
.C:6776  14         $14
.C:6777  09 0F     ORA #$0F
.C:6779  0E 13 20  ASL $2013
.C:677c  20 20 20  JSR $2020
.C:677f  20 20 7E  JSR $7E20
.C:6782  0C         $0C
.C:6783  05 06     ORA $06
.C:6785  14         $14
.C:6786  7D 20 12  ADC $1220,X
.C:6789  09 07     ORA #$07
.C:678b  08        PHP
.C:678c  14         $14
.C:678d  20 7C 20  JSR $207C
.C:6790  0A        ASL A
.C:6791  15 0D     ORA $0D,X
.C:6793  10 7F     BPL $6814
.C:6795  20 20 20  JSR $2020
.C:6798  20 13 03  JSR $0313
.C:679b  0F         $0F
.C:679c  12         $12
.C:679d  05 20     ORA $20
.C:679f  10 0F     BPL $67B0
.C:67a1  09 0E     ORA #$0E
.C:67a3  14         $14
.C:67a4  13         $13
.C:67a5  20 05 01  JSR $0105
.C:67a8  03         $03
.C:67a9  08        PHP
.C:67aa  20 10 08  JSR $0810
.C:67ad  01 13     ORA ($13,X)
.C:67af  05 2E     ORA $2E
.C:67b1  20 20 08  JSR $0820
.C:67b4  05 12     ORA $12
.C:67b6  0F         $0F
.C:67b7  20 17 09  JSR $0917
.C:67ba  0E 13 20  ASL $2013
.C:67bd  01 20     ORA ($20,X)
.C:67bf  20 20 20  JSR $2020
.C:67c2  05 01     ORA $01
.C:67c4  03         $03
.C:67c5  08        PHP
.C:67c6  20 14 09  JSR $0914
.C:67c9  0D 05 20  ORA $2005
.C:67cc  20 20 20  JSR $2020
.C:67cf  08        PHP
.C:67d0  05 20     ORA $20
.C:67d2  03         $03
.C:67d3  0F         $0F
.C:67d4  0D 10 0C  ORA $0C10
.C:67d7  05 14     ORA $14
.C:67d9  05 13     ORA $13
.C:67db  20 01 20  JSR $2001
.C:67de  17         $17
.C:67df  01 0C     ORA ($0C,X)
.C:67e1  0C         $0C
.C:67e2  2E 20 20  ROL $2020
.C:67e5  20 06 09  JSR $0906
.C:67e8  16 05     ASL $05,X
.C:67ea  20 20 20  JSR $2020
.C:67ed  20 07 09  JSR $0907
.C:67f0  16 05     ASL $05,X
.C:67f2  13         $13
.C:67f3  20 13 15  JSR $1513
.C:67f6  10 05     BPL $67FD
.C:67f8  12         $12
.C:67f9  20 02 0F  JSR $0F02
.C:67fc  0E 15 13  ASL $1315
.C:67ff  2E 00 10  ROL $1000
.C:6802  00        BRK
.C:6803  00        BRK
.C:6804  54         $54
.C:6805  00        BRK
.C:6806  00        BRK
.C:6807  5C         $5C
.C:6808  00        BRK
.C:6809  00        BRK
.C:680a  7C         $7C
.C:680b  00        BRK
.C:680c  02         $02
.C:680d  7C         $7C
.C:680e  00        BRK
.C:680f  02         $02
.C:6810  B0 00     BCS $6812
.C:6812  01 A0     ORA ($A0,X)
.C:6814  00        BRK
.C:6815  01 A8     ORA ($A8,X)
.C:6817  00        BRK
.C:6818  01 A8     ORA ($A8,X)
.C:681a  00        BRK
.C:681b  01 A8     ORA ($A8,X)
.C:681d  00        BRK
.C:681e  01 A8     ORA ($A8,X)
.C:6820  00        BRK
.C:6821  03         $03
.C:6822  A8        TAY
.C:6823  00        BRK
.C:6824  03         $03
.C:6825  54         $54
.C:6826  00        BRK
.C:6827  02         $02
.C:6828  A8        TAY
.C:6829  00        BRK
.C:682a  02         $02
.C:682b  A8        TAY
.C:682c  00        BRK
.C:682d  00        BRK
.C:682e  A0 00     LDY #$00
.C:6830  00        BRK
.C:6831  A0 00     LDY #$00
.C:6833  00        BRK
.C:6834  80         $80
.C:6835  00        BRK
.C:6836  00        BRK
.C:6837  80         $80
.C:6838  00        BRK
.C:6839  00        BRK
.C:683a  C0 00     CPY #$00
.C:683c  00        BRK
.C:683d  A0 00     LDY #$00
.C:683f  AA        TAX
.C:6840  00        BRK
.C:6841  10 00     BPL $6843
.C:6843  00        BRK
.C:6844  54         $54
.C:6845  00        BRK
.C:6846  00        BRK
.C:6847  5C         $5C
.C:6848  00        BRK
.C:6849  00        BRK
.C:684a  7C         $7C
.C:684b  00        BRK
.C:684c  02         $02
.C:684d  7C         $7C
.C:684e  00        BRK
.C:684f  02         $02
.C:6850  B0 00     BCS $6852
.C:6852  01 A0     ORA ($A0,X)
.C:6854  00        BRK
.C:6855  01 A8     ORA ($A8,X)
.C:6857  00        BRK
.C:6858  01 AB     ORA ($AB,X)
.C:685a  00        BRK
.C:685b  01 AB     ORA ($AB,X)
.C:685d  00        BRK
.C:685e  01 A8     ORA ($A8,X)
.C:6860  00        BRK
.C:6861  01 E8     ORA ($E8,X)
.C:6863  00        BRK
.C:6864  02         $02
.C:6865  D4         $D4
.C:6866  00        BRK
.C:6867  02         $02
.C:6868  A8        TAY
.C:6869  00        BRK
.C:686a  02         $02
.C:686b  A8        TAY
.C:686c  00        BRK
.C:686d  00        BRK
.C:686e  A0 00     LDY #$00
.C:6870  00        BRK
.C:6871  20 00 00  JSR $0000
.C:6874  A0 00     LDY #$00
.C:6876  03         $03
.C:6877  A0 00     LDY #$00
.C:6879  02         $02
.C:687a  30 00     BMI $687C
.C:687c  02         $02
.C:687d  28        PLP
.C:687e  00        BRK
.C:687f  AA        TAX
.C:6880  00        BRK
.C:6881  10 00     BPL $6883
.C:6883  00        BRK
.C:6884  54         $54
.C:6885  00        BRK
.C:6886  00        BRK
.C:6887  5C         $5C
.C:6888  00        BRK
.C:6889  00        BRK
.C:688a  7C         $7C
.C:688b  00        BRK
.C:688c  02         $02
.C:688d  7C         $7C
.C:688e  00        BRK
.C:688f  02         $02
.C:6890  B0 00     BCS $6892
.C:6892  01 A0     ORA ($A0,X)
.C:6894  00        BRK
.C:6895  01 A8     ORA ($A8,X)
.C:6897  00        BRK
.C:6898  01 A9     ORA ($A9,X)
.C:689a  00        BRK
.C:689b  01 A9     ORA ($A9,X)
.C:689d  00        BRK
.C:689e  01 A9     ORA ($A9,X)
.C:68a0  C0 01     CPY #$01
.C:68a2  E8        INX
.C:68a3  C0 02     CPY #$02
.C:68a5  D4         $D4
.C:68a6  00        BRK
.C:68a7  02         $02
.C:68a8  A8        TAY
.C:68a9  00        BRK
.C:68aa  00        BRK
.C:68ab  A8        TAY
.C:68ac  00        BRK
.C:68ad  02         $02
.C:68ae  A0 00     LDY #$00
.C:68b0  0A        ASL A
.C:68b1  20 00 0C  JSR $0C00
.C:68b4  20 00 08  JSR $0800
.C:68b7  20 00 08  JSR $0800
.C:68ba  30 00     BMI $68BC
.C:68bc  00        BRK
.C:68bd  28        PLP
.C:68be  00        BRK
.C:68bf  AA        TAX
.C:68c0  00        BRK
.C:68c1  10 00     BPL $68C3
.C:68c3  00        BRK
.C:68c4  54         $54
.C:68c5  00        BRK
.C:68c6  00        BRK
.C:68c7  5C         $5C
.C:68c8  00        BRK
.C:68c9  00        BRK
.C:68ca  7C         $7C
.C:68cb  00        BRK
.C:68cc  02         $02
.C:68cd  7C         $7C
.C:68ce  00        BRK
.C:68cf  02         $02
.C:68d0  B0 00     BCS $68D2
.C:68d2  01 A0     ORA ($A0,X)
.C:68d4  00        BRK
.C:68d5  01 A8     ORA ($A8,X)
.C:68d7  00        BRK
.C:68d8  01 A9     ORA ($A9,X)
.C:68da  C0 01     CPY #$01
.C:68dc  79 C0 02  ADC $02C0,Y
.C:68df  78        SEI
.C:68e0  00        BRK
.C:68e1  01 54     ORA ($54,X)
.C:68e3  00        BRK
.C:68e4  02         $02
.C:68e5  A8        TAY
.C:68e6  00        BRK
.C:68e7  02         $02
.C:68e8  A0 00     LDY #$00
.C:68ea  00        BRK
.C:68eb  A0 00     LDY #$00
.C:68ed  00        BRK
.C:68ee  A8        TAY
.C:68ef  00        BRK
.C:68f0  00        BRK
.C:68f1  88        DEY
.C:68f2  00        BRK
.C:68f3  00        BRK
.C:68f4  8C 00 00  STY $0000
.C:68f7  8A        TXA
.C:68f8  00        BRK
.C:68f9  00        BRK
.C:68fa  C0 00     CPY #$00
.C:68fc  00        BRK
.C:68fd  A0 00     LDY #$00
.C:68ff  AA        TAX
.C:6900  00        BRK
.C:6901  10 00     BPL $6903
.C:6903  00        BRK
.C:6904  54         $54
.C:6905  00        BRK
.C:6906  00        BRK
.C:6907  5C         $5C
.C:6908  00        BRK
.C:6909  00        BRK
.C:690a  7C         $7C
.C:690b  00        BRK
.C:690c  02         $02
.C:690d  7C         $7C
.C:690e  00        BRK
.C:690f  02         $02
.C:6910  B0 00     BCS $6912
.C:6912  01 A0     ORA ($A0,X)
.C:6914  00        BRK
.C:6915  01 A8     ORA ($A8,X)
.C:6917  00        BRK
.C:6918  01 AB     ORA ($AB,X)
.C:691a  00        BRK
.C:691b  01 7B     ORA ($7B,X)
.C:691d  00        BRK
.C:691e  02         $02
.C:691f  78        SEI
.C:6920  00        BRK
.C:6921  01 54     ORA ($54,X)
.C:6923  00        BRK
.C:6924  02         $02
.C:6925  A8        TAY
.C:6926  00        BRK
.C:6927  00        BRK
.C:6928  A0 00     LDY #$00
.C:692a  00        BRK
.C:692b  A8        TAY
.C:692c  00        BRK
.C:692d  02         $02
.C:692e  88        DEY
.C:692f  00        BRK
.C:6930  02         $02
.C:6931  88        DEY
.C:6932  00        BRK
.C:6933  03         $03
.C:6934  0C         $0C
.C:6935  00        BRK
.C:6936  02         $02
.C:6937  0A        ASL A
.C:6938  00        BRK
.C:6939  02         $02
.C:693a  00        BRK
.C:693b  00        BRK
.C:693c  00        BRK
.C:693d  00        BRK
.C:693e  00        BRK
.C:693f  AA        TAX
.C:6940  00        BRK
.C:6941  10 00     BPL $6943
.C:6943  00        BRK
.C:6944  54         $54
.C:6945  00        BRK
.C:6946  00        BRK
.C:6947  5C         $5C
.C:6948  00        BRK
.C:6949  00        BRK
.C:694a  7C         $7C
.C:694b  00        BRK
.C:694c  00        BRK
.C:694d  7C         $7C
.C:694e  30 00     BMI $6950
.C:6950  30 30     BMI $6982
.C:6952  00        BRK
.C:6953  A8        TAY
.C:6954  40        RTI
.C:6955  01 A5     ORA ($A5,X)
.C:6957  40        RTI
.C:6958  01 A5     ORA ($A5,X)
.C:695a  00        BRK
.C:695b  0D A8 00  ORA $00A8
.C:695e  0C         $0C
.C:695f  A8        TAY
.C:6960  00        BRK
.C:6961  00        BRK
.C:6962  A8        TAY
.C:6963  00        BRK
.C:6964  00        BRK
.C:6965  A8        TAY
.C:6966  00        BRK
.C:6967  00        BRK
.C:6968  14         $14
.C:6969  00        BRK
.C:696a  00        BRK
.C:696b  AA        TAX
.C:696c  00        BRK
.C:696d  02         $02
.C:696e  AA        TAX
.C:696f  88        DEY
.C:6970  0A        ASL A
.C:6971  82         $82
.C:6972  A8        TAY
.C:6973  0E 00 B8  ASL $B800
.C:6976  08        PHP
.C:6977  00        BRK
.C:6978  20 08 00  JSR $0008
.C:697b  00        BRK
.C:697c  00        BRK
.C:697d  00        BRK
.C:697e  00        BRK
.C:697f  AA        TAX
.C:6980  00        BRK
.C:6981  10 00     BPL $6983
.C:6983  00        BRK
.C:6984  54         $54
.C:6985  00        BRK
.C:6986  00        BRK
.C:6987  5C         $5C
.C:6988  00        BRK
.C:6989  0C         $0C
.C:698a  7C         $7C
.C:698b  00        BRK
.C:698c  0C         $0C
.C:698d  7C         $7C
.C:698e  00        BRK
.C:698f  05 B0     ORA $B0
.C:6991  C0 01     CPY #$01
.C:6993  A4 C0     LDY $C0
.C:6995  01 A5     ORA ($A5,X)
.C:6997  40        RTI
.C:6998  00        BRK
.C:6999  A9 00     LDA #$00
.C:699b  00        BRK
.C:699c  A8        TAY
.C:699d  00        BRK
.C:699e  00        BRK
.C:699f  A8        TAY
.C:69a0  00        BRK
.C:69a1  00        BRK
.C:69a2  A4 00     LDY $00
.C:69a4  00        BRK
.C:69a5  58        CLI
.C:69a6  00        BRK
.C:69a7  00        BRK
.C:69a8  28        PLP
.C:69a9  00        BRK
.C:69aa  00        BRK
.C:69ab  AA        TAX
.C:69ac  00        BRK
.C:69ad  02         $02
.C:69ae  8A        TXA
.C:69af  00        BRK
.C:69b0  03         $03
.C:69b1  02         $02
.C:69b2  00        BRK
.C:69b3  02         $02
.C:69b4  03         $03
.C:69b5  00        BRK
.C:69b6  02         $02
.C:69b7  02         $02
.C:69b8  80         $80
.C:69b9  00        BRK
.C:69ba  00        BRK
.C:69bb  00        BRK
.C:69bc  00        BRK
.C:69bd  00        BRK
.C:69be  00        BRK
.C:69bf  AA        TAX
.C:69c0  00        BRK
.C:69c1  10 00     BPL $69C3
.C:69c3  00        BRK
.C:69c4  54         $54
.C:69c5  00        BRK
.C:69c6  00        BRK
.C:69c7  5C         $5C
.C:69c8  00        BRK
.C:69c9  00        BRK
.C:69ca  7C         $7C
.C:69cb  00        BRK
.C:69cc  00        BRK
.C:69cd  7C         $7C
.C:69ce  00        BRK
.C:69cf  00        BRK
.C:69d0  B0 00     BCS $69D2
.C:69d2  00        BRK
.C:69d3  A3         $A3
.C:69d4  00        BRK
.C:69d5  00        BRK
.C:69d6  9B         $9B
.C:69d7  00        BRK
.C:69d8  00        BRK
.C:69d9  99 00 00  STA $0000,Y
.C:69dc  95 00     STA $00,X
.C:69de  00        BRK
.C:69df  A4 00     LDY $00
.C:69e1  00        BRK
.C:69e2  A9 00     LDA #$00
.C:69e4  00        BRK
.C:69e5  26 00     ROL $00
.C:69e7  00        BRK
.C:69e8  1A         $1A
.C:69e9  80         $80
.C:69ea  00        BRK
.C:69eb  2A        ROL A
.C:69ec  80         $80
.C:69ed  00        BRK
.C:69ee  28        PLP
.C:69ef  E0 00     CPX #$00
.C:69f1  08        PHP
.C:69f2  20 00 08  JSR $0800
.C:69f5  00        BRK
.C:69f6  00        BRK
.C:69f7  0E 00 00  ASL $0000
.C:69fa  02         $02
.C:69fb  00        BRK
.C:69fc  00        BRK
.C:69fd  00        BRK
.C:69fe  00        BRK
.C:69ff  AA        TAX
.C:6a00  00        BRK
.C:6a01  00        BRK
.C:6a02  00        BRK
.C:6a03  00        BRK
.C:6a04  00        BRK
.C:6a05  00        BRK
.C:6a06  00        BRK
.C:6a07  00        BRK
.C:6a08  00        BRK
.C:6a09  00        BRK
.C:6a0a  00        BRK
.C:6a0b  00        BRK
.C:6a0c  00        BRK
.C:6a0d  00        BRK
.C:6a0e  00        BRK
.C:6a0f  00        BRK
.C:6a10  00        BRK
.C:6a11  00        BRK
.C:6a12  00        BRK
.C:6a13  00        BRK
.C:6a14  00        BRK
.C:6a15  00        BRK
.C:6a16  00        BRK
.C:6a17  00        BRK
.C:6a18  00        BRK
.C:6a19  00        BRK
.C:6a1a  00        BRK
.C:6a1b  00        BRK
.C:6a1c  00        BRK
.C:6a1d  00        BRK
.C:6a1e  00        BRK
.C:6a1f  00        BRK
.C:6a20  00        BRK
.C:6a21  00        BRK
.C:6a22  00        BRK
.C:6a23  00        BRK
.C:6a24  02         $02
.C:6a25  00        BRK
.C:6a26  00        BRK
.C:6a27  00        BRK
.C:6a28  80         $80
.C:6a29  80         $80
.C:6a2a  01 55     ORA ($55,X)
.C:6a2c  50 00     BVC $6A2E
.C:6a2e  80         $80
.C:6a2f  80         $80
.C:6a30  02         $02
.C:6a31  00        BRK
.C:6a32  00        BRK
.C:6a33  00        BRK
.C:6a34  00        BRK
.C:6a35  00        BRK
.C:6a36  00        BRK
.C:6a37  00        BRK
.C:6a38  00        BRK
.C:6a39  00        BRK
.C:6a3a  00        BRK
.C:6a3b  00        BRK
.C:6a3c  00        BRK
.C:6a3d  00        BRK
.C:6a3e  00        BRK
.C:6a3f  AA        TAX
.C:6a40  00        BRK
.C:6a41  00        BRK
.C:6a42  00        BRK
.C:6a43  00        BRK
.C:6a44  00        BRK
.C:6a45  00        BRK
.C:6a46  00        BRK
.C:6a47  00        BRK
.C:6a48  00        BRK
.C:6a49  00        BRK
.C:6a4a  00        BRK
.C:6a4b  00        BRK
.C:6a4c  00        BRK
.C:6a4d  00        BRK
.C:6a4e  00        BRK
.C:6a4f  00        BRK
.C:6a50  00        BRK
.C:6a51  00        BRK
.C:6a52  00        BRK
.C:6a53  00        BRK
.C:6a54  00        BRK
.C:6a55  00        BRK
.C:6a56  00        BRK
.C:6a57  00        BRK
.C:6a58  00        BRK
.C:6a59  00        BRK
.C:6a5a  00        BRK
.C:6a5b  00        BRK
.C:6a5c  00        BRK
.C:6a5d  00        BRK
.C:6a5e  00        BRK
.C:6a5f  00        BRK
.C:6a60  00        BRK
.C:6a61  00        BRK
.C:6a62  00        BRK
.C:6a63  00        BRK
.C:6a64  00        BRK
.C:6a65  00        BRK
.C:6a66  80         $80
.C:6a67  02         $02
.C:6a68  02         $02
.C:6a69  00        BRK
.C:6a6a  05 55     ORA $55
.C:6a6c  40        RTI
.C:6a6d  02         $02
.C:6a6e  02         $02
.C:6a6f  00        BRK
.C:6a70  00        BRK
.C:6a71  00        BRK
.C:6a72  80         $80
.C:6a73  00        BRK
.C:6a74  00        BRK
.C:6a75  00        BRK
.C:6a76  00        BRK
.C:6a77  00        BRK
.C:6a78  00        BRK
.C:6a79  00        BRK
.C:6a7a  00        BRK
.C:6a7b  00        BRK
.C:6a7c  00        BRK
.C:6a7d  00        BRK
.C:6a7e  00        BRK
.C:6a7f  AA        TAX
.C:6a80  00        BRK
.C:6a81  00        BRK
.C:6a82  00        BRK
.C:6a83  00        BRK
.C:6a84  00        BRK
.C:6a85  00        BRK
.C:6a86  00        BRK
.C:6a87  00        BRK
.C:6a88  00        BRK
.C:6a89  00        BRK
.C:6a8a  00        BRK
.C:6a8b  00        BRK
.C:6a8c  00        BRK
.C:6a8d  00        BRK
.C:6a8e  00        BRK
.C:6a8f  00        BRK
.C:6a90  00        BRK
.C:6a91  00        BRK
.C:6a92  00        BRK
.C:6a93  00        BRK
.C:6a94  00        BRK
.C:6a95  01 30     ORA ($30,X)
.C:6a97  00        BRK
.C:6a98  04         $04
.C:6a99  6C 00 01  JMP ($0100)
.C:6a9c  EA        NOP
.C:6a9d  00        BRK
.C:6a9e  0E A6 00  ASL $00A6
.C:6aa1  03         $03
.C:6aa2  AB         $AB
.C:6aa3  80         $80
.C:6aa4  02         $02
.C:6aa5  BA        TSX
.C:6aa6  40        RTI
.C:6aa7  02         $02
.C:6aa8  AA        TAX
.C:6aa9  80         $80
.C:6aaa  02         $02
.C:6aab  6A        ROR A
.C:6aac  80         $80
.C:6aad  02         $02
.C:6aae  AB         $AB
.C:6aaf  80         $80
.C:6ab0  00        BRK
.C:6ab1  E6 00     INC $00
.C:6ab3  00        BRK
.C:6ab4  AA        TAX
.C:6ab5  00        BRK
.C:6ab6  00        BRK
.C:6ab7  28        PLP
.C:6ab8  00        BRK
.C:6ab9  00        BRK
.C:6aba  00        BRK
.C:6abb  00        BRK
.C:6abc  00        BRK
.C:6abd  00        BRK
.C:6abe  00        BRK
.C:6abf  AA        TAX
.C:6ac0  00        BRK
.C:6ac1  00        BRK
.C:6ac2  00        BRK
.C:6ac3  00        BRK
.C:6ac4  00        BRK
.C:6ac5  00        BRK
.C:6ac6  00        BRK
.C:6ac7  00        BRK
.C:6ac8  00        BRK
.C:6ac9  00        BRK
.C:6aca  00        BRK
.C:6acb  00        BRK
.C:6acc  00        BRK
.C:6acd  00        BRK
.C:6ace  00        BRK
.C:6acf  00        BRK
.C:6ad0  00        BRK
.C:6ad1  00        BRK
.C:6ad2  00        BRK
.C:6ad3  00        BRK
.C:6ad4  00        BRK
.C:6ad5  00        BRK
.C:6ad6  00        BRK
.C:6ad7  00        BRK
.C:6ad8  00        BRK
.C:6ad9  28        PLP
.C:6ada  00        BRK
.C:6adb  00        BRK
.C:6adc  AA        TAX
.C:6add  00        BRK
.C:6ade  00        BRK
.C:6adf  EE 00 02  INC $0200
.C:6ae2  AA        TAX
.C:6ae3  80         $80
.C:6ae4  02         $02
.C:6ae5  9A        TXS
.C:6ae6  80         $80
.C:6ae7  01 AA     ORA ($AA,X)
.C:6ae9  40        RTI
.C:6aea  02         $02
.C:6aeb  AA        TAX
.C:6aec  80         $80
.C:6aed  03         $03
.C:6aee  BB         $BB
.C:6aef  80         $80
.C:6af0  0E AA 00  ASL $00AA
.C:6af3  01 E6     ORA ($E6,X)
.C:6af5  00        BRK
.C:6af6  0C         $0C
.C:6af7  68        PLA
.C:6af8  00        BRK
.C:6af9  03         $03
.C:6afa  30 00     BMI $6AFC
.C:6afc  00        BRK
.C:6afd  00        BRK
.C:6afe  00        BRK
.C:6aff  AA        TAX
.C:6b00  00        BRK
.C:6b01  00        BRK
.C:6b02  00        BRK
.C:6b03  00        BRK
.C:6b04  00        BRK
.C:6b05  00        BRK
.C:6b06  00        BRK
.C:6b07  00        BRK
.C:6b08  00        BRK
.C:6b09  00        BRK
.C:6b0a  00        BRK
.C:6b0b  00        BRK
.C:6b0c  00        BRK
.C:6b0d  00        BRK
.C:6b0e  00        BRK
.C:6b0f  00        BRK
.C:6b10  00        BRK
.C:6b11  00        BRK
.C:6b12  00        BRK
.C:6b13  00        BRK
.C:6b14  00        BRK
.C:6b15  00        BRK
.C:6b16  00        BRK
.C:6b17  00        BRK
.C:6b18  00        BRK
.C:6b19  28        PLP
.C:6b1a  00        BRK
.C:6b1b  00        BRK
.C:6b1c  A6 00     LDX $00
.C:6b1e  00        BRK
.C:6b1f  EA        NOP
.C:6b20  00        BRK
.C:6b21  02         $02
.C:6b22  AA        TAX
.C:6b23  80         $80
.C:6b24  02         $02
.C:6b25  AB         $AB
.C:6b26  80         $80
.C:6b27  01 AA     ORA ($AA,X)
.C:6b29  80         $80
.C:6b2a  02         $02
.C:6b2b  9A        TXS
.C:6b2c  40        RTI
.C:6b2d  02         $02
.C:6b2e  AE C0 00  LDX $00C0
.C:6b31  EA        NOP
.C:6b32  B0 00     BCS $6B34
.C:6b34  AB         $AB
.C:6b35  40        RTI
.C:6b36  00        BRK
.C:6b37  29 30     AND #$30
.C:6b39  00        BRK
.C:6b3a  0C         $0C
.C:6b3b  C0 00     CPY #$00
.C:6b3d  00        BRK
.C:6b3e  00        BRK
.C:6b3f  AA        TAX
.C:6b40  00        BRK
.C:6b41  00        BRK
.C:6b42  00        BRK
.C:6b43  00        BRK
.C:6b44  00        BRK
.C:6b45  00        BRK
.C:6b46  00        BRK
.C:6b47  00        BRK
.C:6b48  00        BRK
.C:6b49  00        BRK
.C:6b4a  00        BRK
.C:6b4b  00        BRK
.C:6b4c  00        BRK
.C:6b4d  00        BRK
.C:6b4e  00        BRK
.C:6b4f  00        BRK
.C:6b50  00        BRK
.C:6b51  00        BRK
.C:6b52  00        BRK
.C:6b53  00        BRK
.C:6b54  C0 00     CPY #$00
.C:6b56  0C         $0C
.C:6b57  40        RTI
.C:6b58  00        BRK
.C:6b59  39 10 00  AND $0010,Y
.C:6b5c  AB         $AB
.C:6b5d  40        RTI
.C:6b5e  00        BRK
.C:6b5f  9A        TXS
.C:6b60  B0 02     BCS $6B64
.C:6b62  EA        NOP
.C:6b63  C0 01     CPY #$01
.C:6b65  AE 80 02  LDX $0280
.C:6b68  AA        TAX
.C:6b69  80         $80
.C:6b6a  02         $02
.C:6b6b  A9 80     LDA #$80
.C:6b6d  02         $02
.C:6b6e  EA        NOP
.C:6b6f  80         $80
.C:6b70  00        BRK
.C:6b71  9B         $9B
.C:6b72  00        BRK
.C:6b73  00        BRK
.C:6b74  AA        TAX
.C:6b75  00        BRK
.C:6b76  00        BRK
.C:6b77  28        PLP
.C:6b78  00        BRK
.C:6b79  00        BRK
.C:6b7a  00        BRK
.C:6b7b  00        BRK
.C:6b7c  00        BRK
.C:6b7d  00        BRK
.C:6b7e  00        BRK
.C:6b7f  AA        TAX
.C:6b80  00        BRK
.C:6b81  10 00     BPL $6B83
.C:6b83  00        BRK
.C:6b84  54         $54
.C:6b85  00        BRK
.C:6b86  00        BRK
.C:6b87  D4         $D4
.C:6b88  00        BRK
.C:6b89  00        BRK
.C:6b8a  F4         $F4
.C:6b8b  00        BRK
.C:6b8c  00        BRK
.C:6b8d  F6 00     INC $00,X
.C:6b8f  00        BRK
.C:6b90  3A         $3A
.C:6b91  00        BRK
.C:6b92  00        BRK
.C:6b93  29 00     AND #$00
.C:6b95  00        BRK
.C:6b96  A9 00     LDA #$00
.C:6b98  03         $03
.C:6b99  A9 00     LDA #$00
.C:6b9b  03         $03
.C:6b9c  A9 00     LDA #$00
.C:6b9e  00        BRK
.C:6b9f  A9 00     LDA #$00
.C:6ba1  00        BRK
.C:6ba2  AB         $AB
.C:6ba3  00        BRK
.C:6ba4  00        BRK
.C:6ba5  57         $57
.C:6ba6  00        BRK
.C:6ba7  00        BRK
.C:6ba8  AA        TAX
.C:6ba9  00        BRK
.C:6baa  00        BRK
.C:6bab  AA        TAX
.C:6bac  00        BRK
.C:6bad  00        BRK
.C:6bae  28        PLP
.C:6baf  00        BRK
.C:6bb0  00        BRK
.C:6bb1  28        PLP
.C:6bb2  00        BRK
.C:6bb3  00        BRK
.C:6bb4  08        PHP
.C:6bb5  00        BRK
.C:6bb6  00        BRK
.C:6bb7  08        PHP
.C:6bb8  00        BRK
.C:6bb9  00        BRK
.C:6bba  0C         $0C
.C:6bbb  00        BRK
.C:6bbc  00        BRK
.C:6bbd  28        PLP
.C:6bbe  00        BRK
.C:6bbf  AA        TAX
.C:6bc0  00        BRK
.C:6bc1  10 00     BPL $6BC3
.C:6bc3  00        BRK
.C:6bc4  54         $54
.C:6bc5  00        BRK
.C:6bc6  00        BRK
.C:6bc7  D4         $D4
.C:6bc8  00        BRK
.C:6bc9  00        BRK
.C:6bca  F4         $F4
.C:6bcb  00        BRK
.C:6bcc  00        BRK
.C:6bcd  F6 00     INC $00,X
.C:6bcf  00        BRK
.C:6bd0  3A         $3A
.C:6bd1  00        BRK
.C:6bd2  00        BRK
.C:6bd3  29 00     AND #$00
.C:6bd5  00        BRK
.C:6bd6  A9 00     LDA #$00
.C:6bd8  03         $03
.C:6bd9  A9 00     LDA #$00
.C:6bdb  03         $03
.C:6bdc  A9 00     LDA #$00
.C:6bde  00        BRK
.C:6bdf  A9 00     LDA #$00
.C:6be1  00        BRK
.C:6be2  AD 00 00  LDA $0000
.C:6be5  5E 00 00  LSR $0000,X
.C:6be8  AA        TAX
.C:6be9  00        BRK
.C:6bea  00        BRK
.C:6beb  AA        TAX
.C:6bec  00        BRK
.C:6bed  00        BRK
.C:6bee  28        PLP
.C:6bef  00        BRK
.C:6bf0  00        BRK
.C:6bf1  20 00 00  JSR $0000
.C:6bf4  28        PLP
.C:6bf5  00        BRK
.C:6bf6  00        BRK
.C:6bf7  2B         $2B
.C:6bf8  00        BRK
.C:6bf9  00        BRK
.C:6bfa  32         $32
.C:6bfb  00        BRK
.C:6bfc  00        BRK
.C:6bfd  A2 00     LDX #$00
.C:6bff  AA        TAX
.C:6c00  00        BRK
.C:6c01  10 00     BPL $6C03
.C:6c03  00        BRK
.C:6c04  54         $54
.C:6c05  00        BRK
.C:6c06  00        BRK
.C:6c07  D4         $D4
.C:6c08  00        BRK
.C:6c09  00        BRK
.C:6c0a  F4         $F4
.C:6c0b  00        BRK
.C:6c0c  00        BRK
.C:6c0d  F6 00     INC $00,X
.C:6c0f  00        BRK
.C:6c10  3A         $3A
.C:6c11  00        BRK
.C:6c12  00        BRK
.C:6c13  29 00     AND #$00
.C:6c15  00        BRK
.C:6c16  A9 00     LDA #$00
.C:6c18  01 A9     ORA ($A9,X)
.C:6c1a  00        BRK
.C:6c1b  01 A9     ORA ($A9,X)
.C:6c1d  00        BRK
.C:6c1e  0D A9 00  ORA $00A9
.C:6c21  0C         $0C
.C:6c22  AD 00 00  LDA $0000
.C:6c25  5E 00 00  LSR $0000,X
.C:6c28  AA        TAX
.C:6c29  00        BRK
.C:6c2a  00        BRK
.C:6c2b  A8        TAY
.C:6c2c  00        BRK
.C:6c2d  00        BRK
.C:6c2e  2A        ROL A
.C:6c2f  00        BRK
.C:6c30  00        BRK
.C:6c31  22         $22
.C:6c32  80         $80
.C:6c33  00        BRK
.C:6c34  20 C0 00  JSR $00C0
.C:6c37  20 80 00  JSR $0080
.C:6c3a  30 80     BMI $6BBC
.C:6c3c  00        BRK
.C:6c3d  A0 00     LDY #$00
.C:6c3f  AA        TAX
.C:6c40  00        BRK
.C:6c41  10 00     BPL $6C43
.C:6c43  00        BRK
.C:6c44  54         $54
.C:6c45  00        BRK
.C:6c46  00        BRK
.C:6c47  D4         $D4
.C:6c48  00        BRK
.C:6c49  00        BRK
.C:6c4a  F4         $F4
.C:6c4b  00        BRK
.C:6c4c  00        BRK
.C:6c4d  F6 00     INC $00,X
.C:6c4f  00        BRK
.C:6c50  3A         $3A
.C:6c51  00        BRK
.C:6c52  00        BRK
.C:6c53  29 00     AND #$00
.C:6c55  00        BRK
.C:6c56  A9 00     LDA #$00
.C:6c58  0D A9 00  ORA $00A9
.C:6c5b  0D B5 00  ORA $00B5
.C:6c5e  00        BRK
.C:6c5f  B6 00     LDX $00,Y
.C:6c61  00        BRK
.C:6c62  55 00     EOR $00,X
.C:6c64  00        BRK
.C:6c65  AA        TAX
.C:6c66  00        BRK
.C:6c67  00        BRK
.C:6c68  2A        ROL A
.C:6c69  00        BRK
.C:6c6a  00        BRK
.C:6c6b  28        PLP
.C:6c6c  00        BRK
.C:6c6d  00        BRK
.C:6c6e  A8        TAY
.C:6c6f  00        BRK
.C:6c70  00        BRK
.C:6c71  88        DEY
.C:6c72  00        BRK
.C:6c73  00        BRK
.C:6c74  C8        INY
.C:6c75  00        BRK
.C:6c76  02         $02
.C:6c77  88        DEY
.C:6c78  00        BRK
.C:6c79  00        BRK
.C:6c7a  0C         $0C
.C:6c7b  00        BRK
.C:6c7c  00        BRK
.C:6c7d  28        PLP
.C:6c7e  00        BRK
.C:6c7f  AA        TAX
.C:6c80  00        BRK
.C:6c81  10 00     BPL $6C83
.C:6c83  00        BRK
.C:6c84  54         $54
.C:6c85  00        BRK
.C:6c86  00        BRK
.C:6c87  D4         $D4
.C:6c88  00        BRK
.C:6c89  00        BRK
.C:6c8a  F4         $F4
.C:6c8b  00        BRK
.C:6c8c  00        BRK
.C:6c8d  F6 00     INC $00,X
.C:6c8f  00        BRK
.C:6c90  3A         $3A
.C:6c91  00        BRK
.C:6c92  00        BRK
.C:6c93  29 00     AND #$00
.C:6c95  00        BRK
.C:6c96  A9 00     LDA #$00
.C:6c98  03         $03
.C:6c99  A9 00     LDA #$00
.C:6c9b  03         $03
.C:6c9c  B5 00     LDA $00,X
.C:6c9e  00        BRK
.C:6c9f  B6 00     LDX $00,Y
.C:6ca1  00        BRK
.C:6ca2  55 00     EOR $00,X
.C:6ca4  00        BRK
.C:6ca5  AA        TAX
.C:6ca6  00        BRK
.C:6ca7  00        BRK
.C:6ca8  28        PLP
.C:6ca9  00        BRK
.C:6caa  00        BRK
.C:6cab  A8        TAY
.C:6cac  00        BRK
.C:6cad  00        BRK
.C:6cae  8A        TXA
.C:6caf  00        BRK
.C:6cb0  00        BRK
.C:6cb1  8A        TXA
.C:6cb2  00        BRK
.C:6cb3  00        BRK
.C:6cb4  C3         $C3
.C:6cb5  00        BRK
.C:6cb6  02         $02
.C:6cb7  82         $82
.C:6cb8  00        BRK
.C:6cb9  00        BRK
.C:6cba  00        BRK
.C:6cbb  00        BRK
.C:6cbc  00        BRK
.C:6cbd  00        BRK
.C:6cbe  00        BRK
.C:6cbf  AA        TAX
.C:6cc0  00        BRK
.C:6cc1  10 00     BPL $6CC3
.C:6cc3  00        BRK
.C:6cc4  54         $54
.C:6cc5  00        BRK
.C:6cc6  00        BRK
.C:6cc7  D4         $D4
.C:6cc8  00        BRK
.C:6cc9  00        BRK
.C:6cca  F4         $F4
.C:6ccb  00        BRK
.C:6ccc  30 F4     BMI $6CC2
.C:6cce  00        BRK
.C:6ccf  30 30     BMI $6D01
.C:6cd1  00        BRK
.C:6cd2  14         $14
.C:6cd3  A8        TAY
.C:6cd4  00        BRK
.C:6cd5  05 69     ORA $69
.C:6cd7  00        BRK
.C:6cd8  01 69     ORA ($69,X)
.C:6cda  00        BRK
.C:6cdb  00        BRK
.C:6cdc  A9 C0     LDA #$C0
.C:6cde  00        BRK
.C:6cdf  A8        TAY
.C:6ce0  C0 00     CPY #$00
.C:6ce2  A8        TAY
.C:6ce3  00        BRK
.C:6ce4  00        BRK
.C:6ce5  A8        TAY
.C:6ce6  00        BRK
.C:6ce7  00        BRK
.C:6ce8  50 00     BVC $6CEA
.C:6cea  02         $02
.C:6ceb  A8        TAY
.C:6cec  00        BRK
.C:6ced  8A        TXA
.C:6cee  AA        TAX
.C:6cef  00        BRK
.C:6cf0  AA        TAX
.C:6cf1  0A        ASL A
.C:6cf2  80         $80
.C:6cf3  B8        CLV
.C:6cf4  02         $02
.C:6cf5  C0 20     CPY #$20
.C:6cf7  00        BRK
.C:6cf8  80         $80
.C:6cf9  00        BRK
.C:6cfa  00        BRK
.C:6cfb  80         $80
.C:6cfc  00        BRK
.C:6cfd  00        BRK
.C:6cfe  00        BRK
.C:6cff  AA        TAX
.C:6d00  00        BRK
.C:6d01  10 00     BPL $6D03
.C:6d03  00        BRK
.C:6d04  54         $54
.C:6d05  00        BRK
.C:6d06  00        BRK
.C:6d07  D4         $D4
.C:6d08  00        BRK
.C:6d09  00        BRK
.C:6d0a  F4         $F4
.C:6d0b  C0 00     CPY #$00
.C:6d0d  F4         $F4
.C:6d0e  C0 0C     CPY #$0C
.C:6d10  39 40 0C  AND $0C40,Y
.C:6d13  69 00     ADC #$00
.C:6d15  05 69     ORA $69
.C:6d17  00        BRK
.C:6d18  01 A8     ORA ($A8,X)
.C:6d1a  00        BRK
.C:6d1b  00        BRK
.C:6d1c  A8        TAY
.C:6d1d  00        BRK
.C:6d1e  00        BRK
.C:6d1f  A8        TAY
.C:6d20  00        BRK
.C:6d21  00        BRK
.C:6d22  68        PLA
.C:6d23  00        BRK
.C:6d24  00        BRK
.C:6d25  94 00     STY $00,X
.C:6d27  00        BRK
.C:6d28  A0 00     LDY #$00
.C:6d2a  02         $02
.C:6d2b  A8        TAY
.C:6d2c  00        BRK
.C:6d2d  02         $02
.C:6d2e  8A        TXA
.C:6d2f  00        BRK
.C:6d30  02         $02
.C:6d31  03         $03
.C:6d32  00        BRK
.C:6d33  03         $03
.C:6d34  02         $02
.C:6d35  00        BRK
.C:6d36  0A        ASL A
.C:6d37  02         $02
.C:6d38  00        BRK
.C:6d39  00        BRK
.C:6d3a  00        BRK
.C:6d3b  00        BRK
.C:6d3c  00        BRK
.C:6d3d  00        BRK
.C:6d3e  00        BRK
.C:6d3f  AA        TAX
.C:6d40  00        BRK
.C:6d41  04         $04
.C:6d42  00        BRK
.C:6d43  00        BRK
.C:6d44  15 00     ORA $00,X
.C:6d46  00        BRK
.C:6d47  35 00     AND $00,X
.C:6d49  00        BRK
.C:6d4a  3D 00 00  AND $0000,X
.C:6d4d  3D 00 00  AND $0000,X
.C:6d50  0E 00 00  ASL $0000
.C:6d53  CA        DEX
.C:6d54  00        BRK
.C:6d55  00        BRK
.C:6d56  E6 00     INC $00
.C:6d58  00        BRK
.C:6d59  66 00     ROR $00
.C:6d5b  00        BRK
.C:6d5c  56 00     LSR $00,X
.C:6d5e  00        BRK
.C:6d5f  1A         $1A
.C:6d60  00        BRK
.C:6d61  00        BRK
.C:6d62  6A        ROR A
.C:6d63  00        BRK
.C:6d64  00        BRK
.C:6d65  98        TYA
.C:6d66  00        BRK
.C:6d67  02         $02
.C:6d68  A4 00     LDY $00
.C:6d6a  02         $02
.C:6d6b  A8        TAY
.C:6d6c  00        BRK
.C:6d6d  0B         $0B
.C:6d6e  28        PLP
.C:6d6f  00        BRK
.C:6d70  08        PHP
.C:6d71  20 00 00  JSR $0000
.C:6d74  20 00 00  JSR $0000
.C:6d77  B0 00     BCS $6D79
.C:6d79  00        BRK
.C:6d7a  80         $80
.C:6d7b  00        BRK
.C:6d7c  00        BRK
.C:6d7d  00        BRK
.C:6d7e  00        BRK
.C:6d7f  AA        TAX
.C:6d80  20 13 05  JSR $0513
.C:6d83  0C         $0C
.C:6d84  05 03     ORA $03
.C:6d86  14         $14
.C:6d87  20 7A 05  JSR $057A
.C:6d8a  19 02 0F  ORA $0F02,Y
.C:6d8d  01 12     ORA ($12,X)
.C:6d8f  04         $04
.C:6d90  20 20 20  JSR $2020
.C:6d93  0F         $0F
.C:6d94  12         $12
.C:6d95  20 20 20  JSR $2020
.C:6d98  7B         $7B
.C:6d99  0F         $0F
.C:6d9a  19 13 14  ORA $1413,Y
.C:6d9d  09 03     ORA #$03
.C:6d9f  0B         $0B
.C:6da0  10 0C     BPL $6DAE
.C:6da2  01 03     ORA ($03,X)
.C:6da4  05 20     ORA $20
.C:6da6  0A        ASL A
.C:6da7  0F         $0F
.C:6da8  19 13 14  ORA $1413,Y
.C:6dab  09 03     ORA #$03
.C:6dad  0B         $0B
.C:6dae  20 09 0E  JSR $0E09
.C:6db1  20 10 0F  JSR $0F10
.C:6db4  12         $12
.C:6db5  14         $14
.C:6db6  20 32 20  JSR $2032
.C:6db9  AA        TAX
.C:6dba  AA        TAX
.C:6dbb  AA        TAX
.C:6dbc  AA        TAX
.C:6dbd  AA        TAX
.C:6dbe  AA        TAX
.C:6dbf  AA        TAX
.C:6dc0  30 20     BMI $6DE2
.C:6dc2  10 42     BPL $6E06
.C:6dc4  41 40     EOR ($40,X)
.C:6dc6  3F         $3F
.C:6dc7  06 05     ASL $05
.C:6dc9  01 14     ORA ($14,X)
.C:6dcb  15 12     ORA $12,X
.C:6dcd  09 0E     ORA #$0E
.C:6dcf  07         $07
.C:6dd0  80         $80
.C:6dd1  81 82     STA ($82,X)
.C:6dd3  83         $83
.C:6dd4  84 85     STY $85
.C:6dd6  86 87     STX $87
.C:6dd8  88        DEY
.C:6dd9  89         $89
.C:6dda  8A        TXA
.C:6ddb  8B         $8B
.C:6ddc  8C 8D 8E  STY $8E8D
.C:6ddf  8F         $8F
.C:6de0  88        DEY
.C:6de1  89         $89
.C:6de2  8A        TXA
.C:6de3  8B         $8B
.C:6de4  90 20     BCC $6E06
.C:6de6  91 92     STA ($92),Y
.C:6de8  90 20     BCC $6E0A
.C:6dea  91 92     STA ($92),Y
.C:6dec  93         $93
.C:6ded  94 95     STY $95,X
.C:6def  96 29     STX $29,Y
.C:6df1  28        PLP
.C:6df2  01 00     ORA ($00,X)
.C:6df4  73         $73
.C:6df5  75 77     ADC $77,X
.C:6df7  7B         $7B
.C:6df8  7D 7F 81  ADC $817F,X
.C:6dfb  83         $83
.C:6dfc  60        RTS
.C:6dfd  70 80     BVS $6D7F
.C:6dff  A0 B0     LDY #$B0
.C:6e01  C0 D0     CPY #$D0
.C:6e03  E0 A0     CPX #$A0
.C:6e05  A3         $A3
.C:6e06  A1 A2     LDA ($A2,X)
.C:6e08  B2         $B2
.C:6e09  B2         $B2
.C:6e0a  B2         $B2
.C:6e0b  B2         $B2
.C:6e0c  B2         $B2
.C:6e0d  B2         $B2
.C:6e0e  B3         $B3
.C:6e0f  B3         $B3
.C:6e10  B3         $B3
.C:6e11  B3         $B3
.C:6e12  B4 B4     LDY $B4,X
.C:6e14  B4 B4     LDY $B4,X
.C:6e16  B4 B4     LDY $B4,X
.C:6e18  00        BRK
.C:6e19  06 0B     ASL $0B
.C:6e1b  0E 10 12  ASL $1210
.C:6e1e  13         $13
.C:6e1f  14         $14
.C:6e20  14         $14
.C:6e21  13         $13
.C:6e22  12         $12
.C:6e23  10 0E     BPL $6E33
.C:6e25  0B         $0B
.C:6e26  06 00     ASL $00
.C:6e28  50 74     BVC $6E9E
.C:6e2a  50 D8     BVC $6E04
.C:6e2c  78        SEI
.C:6e2d  84 78     STY $78
.C:6e2f  88        DEY
.C:6e30  3F         $3F
.C:6e31  40        RTI
.C:6e32  44         $44
.C:6e33  44         $44
.C:6e34  3F         $3F
.C:6e35  40        RTI
.C:6e36  44         $44
.C:6e37  44         $44
.C:6e38  3F         $3F
.C:6e39  40        RTI
.C:6e3a  44         $44
.C:6e3b  44         $44
.C:6e3c  3F         $3F
.C:6e3d  40        RTI
.C:6e3e  41 42     EOR ($42,X)
.C:6e40  20 20 41  JSR $4120
.C:6e43  42         $42
.C:6e44  20 20 41  JSR $4120
.C:6e47  42         $42
.C:6e48  20 20 41  JSR $4120
.C:6e4b  42         $42
.C:6e4c  5A         $5A
.C:6e4d  20 20 20  JSR $2020
.C:6e50  5A         $5A
.C:6e51  20 20 20  JSR $2020
.C:6e54  5A         $5A
.C:6e55  20 20 20  JSR $2020
.C:6e58  5A         $5A
.C:6e59  20 5A 20  JSR $205A
.C:6e5c  20 20 5A  JSR $5A20
.C:6e5f  20 20 20  JSR $2020
.C:6e62  5A         $5A
.C:6e63  20 20 20  JSR $2020
.C:6e66  5A         $5A
.C:6e67  20 5A 20  JSR $205A
.C:6e6a  20 20 5A  JSR $5A20
.C:6e6d  20 20 20  JSR $2020
.C:6e70  5A         $5A
.C:6e71  20 20 20  JSR $2020
.C:6e74  5A         $5A
.C:6e75  20 5A 20  JSR $205A
.C:6e78  20 20 5A  JSR $5A20
.C:6e7b  20 20 20  JSR $2020
.C:6e7e  5A         $5A
.C:6e7f  20 20 20  JSR $2020
.C:6e82  5A         $5A
.C:6e83  20 5A 20  JSR $205A
.C:6e86  20 20 5A  JSR $5A20
.C:6e89  20 20 20  JSR $2020
.C:6e8c  5A         $5A
.C:6e8d  20 20 20  JSR $2020
.C:6e90  5A         $5A
.C:6e91  20 5A 20  JSR $205A
.C:6e94  20 20 5A  JSR $5A20
.C:6e97  20 20 20  JSR $2020
.C:6e9a  5A         $5A
.C:6e9b  20 20 20  JSR $2020
.C:6e9e  5A         $5A
.C:6e9f  20 3F 40  JSR $403F
.C:6ea2  43         $43
.C:6ea3  41 42     EOR ($42,X)
.C:6ea5  43         $43
.C:6ea6  5A         $5A
.C:6ea7  20 43 5A  JSR $5A43
.C:6eaa  20 43 5A  JSR $5A43
.C:6ead  20 43 5A  JSR $5A43
.C:6eb0  20 43 5A  JSR $5A43
.C:6eb3  20 43 20  JSR $2043
.C:6eb6  20 43 20  JSR $2043
.C:6eb9  20 6F 6E  JSR $6E6F
.C:6ebc  20 20 20  JSR $2020
.C:6ebf  20 20 6F  JSR $6F20
.C:6ec2  6C 6C 6E  JMP ($6E6C)
.C:6ec5  3F         $3F
.C:6ec6  40        RTI
.C:6ec7  43         $43
.C:6ec8  6F         $6F
.C:6ec9  6C A0 A1  JMP ($A1A0)
.C:6ecc  6C 41 42  JMP ($4241)
.C:6ecf  43         $43
.C:6ed0  6C 6C A2  JMP ($A26C)
.C:6ed3  A3         $A3
.C:6ed4  6C 6D 20  JMP ($206D)
.C:6ed7  43         $43
.C:6ed8  6C 6C A4  JMP ($A46C)
.C:6edb  A5 6C     LDA $6C
.C:6edd  6D 20 43  ADC $4320
.C:6ee0  6C 6C A6  JMP ($A66C)
.C:6ee3  A7         $A7
.C:6ee4  6C 6D 20  JMP ($206D)
.C:6ee7  43         $43
.C:6ee8  6C 6C 6C  JMP ($6C6C)
.C:6eeb  6C 6C 6D  JMP ($6D6C)
.C:6eee  20 43 6C  JSR $6C43
.C:6ef1  6C 6C 6C  JMP ($6C6C)
.C:6ef4  6C 6D 20  JMP ($206D)
.C:6ef7  43         $43
.C:6ef8  6C 6C 6C  JMP ($6C6C)
.C:6efb  6C 6C 6C  JMP ($6C6C)
.C:6efe  20 43 08  JSR $0843
.C:6f01  08        PHP
.C:6f02  08        PHP
.C:6f03  08        PHP
.C:6f04  08        PHP
.C:6f05  08        PHP
.C:6f06  08        PHP
.C:6f07  08        PHP
.C:6f08  08        PHP
.C:6f09  08        PHP
.C:6f0a  08        PHP
.C:6f0b  08        PHP
.C:6f0c  08        PHP
.C:6f0d  0C         $0C
.C:6f0e  0C         $0C
.C:6f0f  0C         $0C
.C:6f10  08        PHP
.C:6f11  08        PHP
.C:6f12  0F         $0F
.C:6f13  0F         $0F
.C:6f14  08        PHP
.C:6f15  0C         $0C
.C:6f16  0C         $0C
.C:6f17  0C         $0C
.C:6f18  08        PHP
.C:6f19  08        PHP
.C:6f1a  0A        ASL A
.C:6f1b  0F         $0F
.C:6f1c  08        PHP
.C:6f1d  0C         $0C
.C:6f1e  0C         $0C
.C:6f1f  0C         $0C
.C:6f20  08        PHP
.C:6f21  08        PHP
.C:6f22  0A        ASL A
.C:6f23  0A        ASL A
.C:6f24  08        PHP
.C:6f25  0C         $0C
.C:6f26  0C         $0C
.C:6f27  0C         $0C
.C:6f28  08        PHP
.C:6f29  08        PHP
.C:6f2a  0A        ASL A
.C:6f2b  0A        ASL A
.C:6f2c  08        PHP
.C:6f2d  0C         $0C
.C:6f2e  0C         $0C
.C:6f2f  0C         $0C
.C:6f30  08        PHP
.C:6f31  08        PHP
.C:6f32  08        PHP
.C:6f33  08        PHP
.C:6f34  08        PHP
.C:6f35  0C         $0C
.C:6f36  0C         $0C
.C:6f37  0C         $0C
.C:6f38  08        PHP
.C:6f39  08        PHP
.C:6f3a  08        PHP
.C:6f3b  08        PHP
.C:6f3c  08        PHP
.C:6f3d  0C         $0C
.C:6f3e  0C         $0C
.C:6f3f  0C         $0C
.C:6f40  08        PHP
.C:6f41  08        PHP
.C:6f42  08        PHP
.C:6f43  08        PHP
.C:6f44  08        PHP
.C:6f45  0C         $0C
.C:6f46  0C         $0C
.C:6f47  0C         $0C
.C:6f48  AA        TAX
.C:6f49  AA        TAX
.C:6f4a  AA        TAX
.C:6f4b  AA        TAX
.C:6f4c  AA        TAX
.C:6f4d  AA        TAX
.C:6f4e  AA        TAX
.C:6f4f  20 45 20  JSR $2045
.C:6f52  20 3B 47  JSR $473B
.C:6f55  48        PHA
.C:6f56  20 3C 4F  JSR $4F3C
.C:6f59  4A        LSR A
.C:6f5a  49 3C     EOR #$3C
.C:6f5c  50 4B     BVC $6FA9
.C:6f5e  4C 3C 51  JMP $513C
.C:6f61  4E 4D 00  LSR $004D
.C:6f64  0A        ASL A
.C:6f65  00        BRK
.C:6f66  00        BRK
.C:6f67  02         $02
.C:6f68  0A        ASL A
.C:6f69  0B         $0B
.C:6f6a  00        BRK
.C:6f6b  02         $02
.C:6f6c  0A        ASL A
.C:6f6d  0A        ASL A
.C:6f6e  0A        ASL A
.C:6f6f  02         $02
.C:6f70  0A        ASL A
.C:6f71  0A        ASL A
.C:6f72  0A        ASL A
.C:6f73  02         $02
.C:6f74  0A        ASL A
.C:6f75  0A        ASL A
.C:6f76  0A        ASL A
.C:6f77  20 20 20  JSR $2020
.C:6f7a  20 3B 20  JSR $203B
.C:6f7d  20 20 3C  JSR $3C20
.C:6f80  20 20 20  JSR $2020
.C:6f83  3C         $3C
.C:6f84  20 20 20  JSR $2020
.C:6f87  3C         $3C
.C:6f88  20 20 20  JSR $2020
.C:6f8b  00        BRK
.C:6f8c  00        BRK
.C:6f8d  00        BRK
.C:6f8e  00        BRK
.C:6f8f  02         $02
.C:6f90  00        BRK
.C:6f91  00        BRK
.C:6f92  00        BRK
.C:6f93  02         $02
.C:6f94  00        BRK
.C:6f95  00        BRK
.C:6f96  00        BRK
.C:6f97  02         $02
.C:6f98  00        BRK
.C:6f99  00        BRK
.C:6f9a  00        BRK
.C:6f9b  02         $02
.C:6f9c  00        BRK
.C:6f9d  00        BRK
.C:6f9e  00        BRK
.C:6f9f  E2         $E2
.C:6fa0  38        SEC
.C:6fa1  99 8D 50  STA $508D,Y
.C:6fa4  87         $87
.C:6fa5  42         $42
.C:6fa6  43         $43
.C:6fa7  43         $43
.C:6fa8  42         $42
.C:6fa9  43         $43
.C:6faa  42         $42
.C:6fab  01 02     ORA ($02,X)
.C:6fad  04         $04
.C:6fae  08        PHP
.C:6faf  10 20     BPL $6FD1
.C:6fb1  0B         $0B
.C:6fb2  0B         $0B
.C:6fb3  0B         $0B
.C:6fb4  0F         $0F
.C:6fb5  0F         $0F
.C:6fb6  0F         $0F
.C:6fb7  09 09     ORA #$09
.C:6fb9  09 0C     ORA #$0C
.C:6fbb  0C         $0C
.C:6fbc  0D 0D 0D  ORA $0D0D
.C:6fbf  08        PHP
.C:6fc0  08        PHP
.C:6fc1  08        PHP
.C:6fc2  08        PHP
.C:6fc3  08        PHP
.C:6fc4  0B         $0B
.C:6fc5  0B         $0B
.C:6fc6  0B         $0B
.C:6fc7  0C         $0C
.C:6fc8  0C         $0C
.C:6fc9  0C         $0C
.C:6fca  0C         $0C
.C:6fcb  0F         $0F
.C:6fcc  0F         $0F
.C:6fcd  0F         $0F
.C:6fce  0D 0D 08  ORA $080D
.C:6fd1  09 09     ORA #$09
.C:6fd3  09 0B     ORA #$0B
.C:6fd5  0B         $0B
.C:6fd6  0C         $0C
.C:6fd7  0C         $0C
.C:6fd8  0C         $0C
.C:6fd9  08        PHP
.C:6fda  08        PHP
.C:6fdb  0D 0D 0F  ORA $0F0D
.C:6fde  09 09     ORA #$09
.C:6fe0  08        PHP
.C:6fe1  08        PHP
.C:6fe2  01 00     ORA ($00,X)
.C:6fe4  00        BRK
.C:6fe5  02         $02
.C:6fe6  04         $04
.C:6fe7  01 08     ORA ($08,X)
.C:6fe9  10 08     BPL $6FF3
.C:6feb  20 40 20  JSR $2040
.C:6fee  40        RTI
.C:6fef  80         $80
.C:6ff0  40        RTI
.C:6ff1  20 10 08  JSR $0810
.C:6ff4  01 20     ORA ($20,X)
.C:6ff6  20 40 40  JSR $4040
.C:6ff9  20 20 40  JSR $4020
.C:6ffc  80         $80
.C:6ffd  40        RTI
.C:6ffe  01 40     ORA ($40,X)
.C:7000  40        RTI
.C:7001  20 40 01  JSR $0140
.C:7004  10 20     BPL $7026
.C:7006  08        PHP
.C:7007  10 08     BPL $7011
.C:7009  80         $80
.C:700a  20 10 40  JSR $4010
.C:700d  01 80     ORA ($80,X)
.C:700f  40        RTI
.C:7010  40        RTI
.C:7011  20 08 22  JSR $2208
.C:7014  21 21     AND ($21,X)
.C:7016  22         $22
.C:7017  08        PHP
.C:7018  21 21     AND ($21,X)
.C:701a  2C 22 22  BIT $2222
.C:701d  21 21     AND ($21,X)
.C:701f  2C 31 21  BIT $2131
.C:7022  21 2C     AND ($2C,X)
.C:7024  08        PHP
.C:7025  22         $22
.C:7026  21 21     AND ($21,X)
.C:7028  22         $22
.C:7029  21 22     AND ($22,X)
.C:702b  21 2C     AND ($2C,X)
.C:702d  22         $22
.C:702e  08        PHP
.C:702f  21 31     AND ($31,X)
.C:7031  21 22     AND ($22,X)
.C:7033  08        PHP
.C:7034  21 21     AND ($21,X)
.C:7036  21 21     AND ($21,X)
.C:7038  2C 2C 22  BIT $222C
.C:703b  21 22     AND ($22,X)
.C:703d  08        PHP
.C:703e  2C 21 31  BIT $3121
.C:7041  20 44 44  JSR $4444
.C:7044  44         $44
.C:7045  44         $44
.C:7046  44         $44
.C:7047  44         $44
.C:7048  44         $44
.C:7049  44         $44
.C:704a  44         $44
.C:704b  44         $44
.C:704c  20 13 15  JSR $1513
.C:704f  10 05     BPL $7056
.C:7051  12         $12
.C:7052  20 20 13  JSR $1320
.C:7055  03         $03
.C:7056  0F         $0F
.C:7057  12         $12
.C:7058  05 20     ORA $20
.C:705a  20 20 20  JSR $2020
.C:705d  20 20 20  JSR $2020
.C:7060  20 30 20  JSR $2030
.C:7063  20 20 20  JSR $2020
.C:7066  20 20 20  JSR $2020
.C:7069  20 20 20  JSR $2020
.C:706c  20 20 20  JSR $2020
.C:706f  20 20 20  JSR $2020
.C:7072  20 20 20  JSR $2020
.C:7075  02         $02
.C:7076  0F         $0F
.C:7077  0E 15 13  ASL $1315
.C:707a  20 20 0C  JSR $0C20
.C:707d  09 16     ORA #$16
.C:707f  05 13     ORA $13
.C:7081  20 20 20  JSR $2020
.C:7084  20 20 20  JSR $2020
.C:7087  20 20 20  JSR $2020
.C:708a  20 20 20  JSR $2020
.C:708d  20 20 20  JSR $2020
.C:7090  20 0C 0C  JSR $0C0C
.C:7093  0C         $0C
.C:7094  0C         $0C
.C:7095  0C         $0C
.C:7096  0C         $0C
.C:7097  0C         $0C
.C:7098  0C         $0C
.C:7099  0C         $0C
.C:709a  0C         $0C
.C:709b  0C         $0C
.C:709c  02         $02
.C:709d  02         $02
.C:709e  02         $02
.C:709f  02         $02
.C:70a0  02         $02
.C:70a1  02         $02
.C:70a2  01 01     ORA ($01,X)
.C:70a4  01 01     ORA ($01,X)
.C:70a6  01 01     ORA ($01,X)
.C:70a8  01 01     ORA ($01,X)
.C:70aa  03         $03
.C:70ab  03         $03
.C:70ac  03         $03
.C:70ad  03         $03
.C:70ae  03         $03
.C:70af  03         $03
.C:70b0  03         $03
.C:70b1  03         $03
.C:70b2  03         $03
.C:70b3  03         $03
.C:70b4  03         $03
.C:70b5  03         $03
.C:70b6  03         $03
.C:70b7  03         $03
.C:70b8  03         $03
.C:70b9  0C         $0C
.C:70ba  0C         $0C
.C:70bb  0C         $0C
.C:70bc  0C         $0C
.C:70bd  0C         $0C
.C:70be  0C         $0C
.C:70bf  0C         $0C
.C:70c0  0C         $0C
.C:70c1  0C         $0C
.C:70c2  0C         $0C
.C:70c3  0C         $0C
.C:70c4  02         $02
.C:70c5  02         $02
.C:70c6  02         $02
.C:70c7  02         $02
.C:70c8  02         $02
.C:70c9  02         $02
.C:70ca  03         $03
.C:70cb  03         $03
.C:70cc  03         $03
.C:70cd  03         $03
.C:70ce  03         $03
.C:70cf  03         $03
.C:70d0  03         $03
.C:70d1  00        BRK
.C:70d2  05 05     ORA $05
.C:70d4  05 05     ORA $05
.C:70d6  05 05     ORA $05
.C:70d8  05 00     ORA $00
.C:70da  00        BRK
.C:70db  00        BRK
.C:70dc  00        BRK
.C:70dd  00        BRK
.C:70de  00        BRK
.C:70df  00        BRK
.C:70e0  00        BRK
.C:70e1  06 03     ASL $03
.C:70e3  07         $07
.C:70e4  02         $02
.C:70e5  04         $04
.C:70e6  06 0E     ASL $0E
.C:70e8  0F         $0F
.C:70e9  2E 00 28  ROL $2800
.C:70ec  50 78     BVC $7166
.C:70ee  A0 0E     LDY #$0E
.C:70f0  01 0D     ORA ($0D,X)
.C:70f2  05 2E     ORA $2E
.C:70f4  20 20 20  JSR $2020
.C:70f7  13         $13
.C:70f8  03         $03
.C:70f9  0F         $0F
.C:70fa  12         $12
.C:70fb  05 20     ORA $20
.C:70fd  0F         $0F
.C:70fe  12         $12
.C:70ff  04         $04
.C:7100  05 12     ORA $12
.C:7102  20 20 0C  JSR $0C20
.C:7105  05 01     ORA $01
.C:7107  07         $07
.C:7108  15 05     ORA $05,X
.C:710a  20 08 09  JSR $0908
.C:710d  13         $13
.C:710e  03         $03
.C:710f  0F         $0F
.C:7110  12         $12
.C:7111  05 02     ORA $02
.C:7113  0F         $0F
.C:7114  0E 15 13  ASL $1315
.C:7117  20 0D 01  JSR $010D
.C:711a  0E 20 01  ASL $0120
.C:711d  14         $14
.C:711e  20 31 30  JSR $3031
.C:7121  30 30     BMI $7153
.C:7123  30 0F     BMI $7134
.C:7125  03         $03
.C:7126  05 01     ORA $01
.C:7128  0E 20 13  ASL $1320
.C:712b  0F         $0F
.C:712c  06 14     ASL $14
.C:712e  17         $17
.C:712f  01 12     ORA ($12,X)
.C:7131  05 20     ORA $20
.C:7133  20 20 10  JSR $1020
.C:7136  12         $12
.C:7137  05 13     ORA $13
.C:7139  05 0E     ORA $0E
.C:713b  14         $14
.C:713c  13         $13
.C:713d  20 20 20  JSR $2020
.C:7140  20 20 20  JSR $2020
.C:7143  02         $02
.C:7144  19 20 0A  ORA $0A20,Y
.C:7147  2E 13 14  ROL $1413
.C:714a  05 05     ORA $05
.C:714c  0C         $0C
.C:714d  05 10     ORA $10
.C:714f  12         $12
.C:7150  05 13     ORA $13
.C:7152  13         $13
.C:7153  20 69 6B  JSR $6B69
.C:7156  20 06 0F  JSR $0F06
.C:7159  12         $12
.C:715a  20 09 0E  JSR $0E09
.C:715d  13         $13
.C:715e  14         $14
.C:715f  12         $12
.C:7160  15 03     ORA $03,X
.C:7162  14         $14
.C:7163  09 0F     ORA #$0F
.C:7165  0E 13 20  ASL $2013
.C:7168  20 20 20  JSR $2020
.C:716b  0F         $0F
.C:716c  12         $12
.C:716d  20 13 10  JSR $1013
.C:7170  01 03     ORA ($03,X)
.C:7172  05 20     ORA $20
.C:7174  14         $14
.C:7175  0F         $0F
.C:7176  20 13 14  JSR $1413
.C:7179  01 12     ORA ($12,X)
.C:717b  14         $14
.C:717c  20 20 20  JSR $2020
.C:717f  20 30 30  JSR $3030
.C:7182  35 30     AND $30,X
.C:7184  30 30     BMI $71B6
.C:7186  30 0A     BMI $7192
.C:7188  0F         $0F
.C:7189  0E 30 30  ASL $3030
.C:718c  35 30     AND $30,X
.C:718e  30 30     BMI $71C0
.C:7190  30 0A     BMI $719C
.C:7192  0F         $0F
.C:7193  0E 30 30  ASL $3030
.C:7196  35 30     AND $30,X
.C:7198  30 30     BMI $71CA
.C:719a  30 0A     BMI $71A6
.C:719c  0F         $0F
.C:719d  0E 30 30  ASL $3030
.C:71a0  35 30     AND $30,X
.C:71a2  30 30     BMI $71D4
.C:71a4  30 0A     BMI $71B0
.C:71a6  0F         $0F
.C:71a7  0E 30 30  ASL $3030
.C:71aa  35 30     AND $30,X
.C:71ac  30 30     BMI $71DE
.C:71ae  30 0A     BMI $71BA
.C:71b0  0F         $0F
.C:71b1  0E 23 20  ASL $2023
.C:71b4  20 23 20  JSR $2023
.C:71b7  20 20 20  JSR $2020
.C:71ba  20 20 20  JSR $2020
.C:71bd  20 20 20  JSR $2020
.C:71c0  20 20 20  JSR $2020
.C:71c3  20 20 20  JSR $2020
.C:71c6  20 20 20  JSR $2020
.C:71c9  20 20 20  JSR $2020
.C:71cc  20 20 20  JSR $2020
.C:71cf  20 20 20  JSR $2020
.C:71d2  20 20 20  JSR $2020
.C:71d5  20 20 20  JSR $2020
.C:71d8  20 20 23  JSR $2320
.C:71db  20 20 23  JSR $2320
.C:71de  20 20 20  JSR $2020
.C:71e1  20 20 20  JSR $2020
.C:71e4  20 20 20  JSR $2020
.C:71e7  20 20 20  JSR $2020
.C:71ea  20 23 20  JSR $2023
.C:71ed  20 23 20  JSR $2023
.C:71f0  20 20 20  JSR $2020
.C:71f3  20 20 20  JSR $2020
.C:71f6  20 20 20  JSR $2020
.C:71f9  20 20 20  JSR $2020
.C:71fc  20 20 20  JSR $2020
.C:71ff  20 20 20  JSR $2020
.C:7202  23         $23
.C:7203  20 20 23  JSR $2320
.C:7206  20 20 20  JSR $2020
.C:7209  20 20 20  JSR $2020
.C:720c  20 20 20  JSR $2020
.C:720f  20 20 20  JSR $2020
.C:7212  20 23 20  JSR $2023
.C:7215  20 23 20  JSR $2023
.C:7218  20 20 20  JSR $2020
.C:721b  20 20 20  JSR $2020
.C:721e  20 20 20  JSR $2020
.C:7221  20 20 20  JSR $2020
.C:7224  20 20 20  JSR $2020
.C:7227  20 20 20  JSR $2020
.C:722a  23         $23
.C:722b  2C 2D 23  BIT $232D
.C:722e  20 23 20  JSR $2023
.C:7231  67         $67
.C:7232  68        PLA
.C:7233  23         $23
.C:7234  23         $23
.C:7235  25 24     AND $24
.C:7237  22         $22
.C:7238  23         $23
.C:7239  23         $23
.C:723a  68        PLA
.C:723b  23         $23
.C:723c  2C 2D 23  BIT $232D
.C:723f  20 20 20  JSR $2020
.C:7242  20 20 20  JSR $2020
.C:7245  20 20 20  JSR $2020
.C:7248  20 20 20  JSR $2020
.C:724b  20 20 20  JSR $2020
.C:724e  20 20 20  JSR $2020
.C:7251  20 23 2F  JSR $2F23
.C:7254  3A         $3A
.C:7255  23         $23
.C:7256  20 23 20  JSR $2023
.C:7259  67         $67
.C:725a  68        PLA
.C:725b  23         $23
.C:725c  1B         $1B
.C:725d  1D 68 23  ORA $2368,X
.C:7260  1B         $1B
.C:7261  20 20 23  JSR $2320
.C:7264  2F         $2F
.C:7265  3A         $3A
.C:7266  23         $23
.C:7267  20 20 20  JSR $2020
.C:726a  20 20 20  JSR $2020
.C:726d  20 20 20  JSR $2020
.C:7270  20 20 20  JSR $2020
.C:7273  20 20 20  JSR $2020
.C:7276  20 20 20  JSR $2020
.C:7279  20 23 20  JSR $2023
.C:727c  20 23 20  JSR $2023
.C:727f  23         $23
.C:7280  20 67 68  JSR $6867
.C:7283  23         $23
.C:7284  20 67 68  JSR $6867
.C:7287  23         $23
.C:7288  20 20 20  JSR $2020
.C:728b  23         $23
.C:728c  20 20 23  JSR $2320
.C:728f  20 20 20  JSR $2020
.C:7292  20 20 20  JSR $2020
.C:7295  20 20 20  JSR $2020
.C:7298  20 20 20  JSR $2020
.C:729b  20 20 20  JSR $2020
.C:729e  20 20 20  JSR $2020
.C:72a1  20 23 20  JSR $2023
.C:72a4  20 23 20  JSR $2023
.C:72a7  23         $23
.C:72a8  1C         $1C
.C:72a9  26 68     ROL $68
.C:72ab  23         $23
.C:72ac  20 67 68  JSR $6867
.C:72af  23         $23
.C:72b0  1C         $1C
.C:72b1  20 20 23  JSR $2320
.C:72b4  20 20 23  JSR $2320
.C:72b7  20 20 20  JSR $2020
.C:72ba  20 20 20  JSR $2020
.C:72bd  20 20 20  JSR $2020
.C:72c0  20 20 20  JSR $2020
.C:72c3  20 20 20  JSR $2020
.C:72c6  20 20 20  JSR $2020
.C:72c9  20 23 20  JSR $2023
.C:72cc  20 23 20  JSR $2023
.C:72cf  28        PLP
.C:72d0  23         $23
.C:72d1  2A        ROL A
.C:72d2  2B         $2B
.C:72d3  23         $23
.C:72d4  20 67 68  JSR $6867
.C:72d7  28        PLP
.C:72d8  23         $23
.C:72d9  23         $23
.C:72da  68        PLA
.C:72db  23         $23
.C:72dc  20 20 23  JSR $2320
.C:72df  20 20 20  JSR $2020
.C:72e2  20 20 20  JSR $2020
.C:72e5  20 20 20  JSR $2020
.C:72e8  20 20 20  JSR $2020
.C:72eb  20 20 20  JSR $2020
.C:72ee  20 20 20  JSR $2020
.C:72f1  20 23 20  JSR $2023
.C:72f4  20 23 20  JSR $2023
.C:72f7  20 20 20  JSR $2020
.C:72fa  20 20 20  JSR $2020
.C:72fd  20 20 20  JSR $2020
.C:7300  20 20 20  JSR $2020
.C:7303  20 20 20  JSR $2020
.C:7306  20 20 20  JSR $2020
.C:7309  20 20 20  JSR $2020
.C:730c  20 20 20  JSR $2020
.C:730f  20 20 20  JSR $2020
.C:7312  20 20 20  JSR $2020
.C:7315  20 20 20  JSR $2020
.C:7318  20 20 23  JSR $2320
.C:731b  20 20 23  JSR $2320
.C:731e  20 20 20  JSR $2020
.C:7321  20 20 20  JSR $2020
.C:7324  20 20 20  JSR $2020
.C:7327  20 20 20  JSR $2020
.C:732a  20 20 20  JSR $2020
.C:732d  20 20 20  JSR $2020
.C:7330  20 20 20  JSR $2020
.C:7333  20 20 20  JSR $2020
.C:7336  20 20 20  JSR $2020
.C:7339  20 20 20  JSR $2020
.C:733c  20 20 20  JSR $2020
.C:733f  20 20 20  JSR $2020
.C:7342  23         $23
.C:7343  20 20 2F  JSR $2F20
.C:7346  20 20 20  JSR $2020
.C:7349  20 20 20  JSR $2020
.C:734c  20 20 20  JSR $2020
.C:734f  20 23 23  JSR $2323
.C:7352  25 24     AND $24
.C:7354  22         $22
.C:7355  23         $23
.C:7356  25 24     AND $24
.C:7358  22         $22
.C:7359  23         $23
.C:735a  23         $23
.C:735b  68        PLA
.C:735c  23         $23
.C:735d  20 22 21  JSR $2122
.C:7360  20 20 20  JSR $2020
.C:7363  20 20 20  JSR $2020
.C:7366  20 20 20  JSR $2020
.C:7369  20 23 20  JSR $2023
.C:736c  20 20 20  JSR $2020
.C:736f  20 20 20  JSR $2020
.C:7372  20 20 20  JSR $2020
.C:7375  20 20 20  JSR $2020
.C:7378  23         $23
.C:7379  20 1F 68  JSR $681F
.C:737c  23         $23
.C:737d  1B         $1B
.C:737e  1D 68 23  ORA $2368,X
.C:7381  1B         $1B
.C:7382  20 20 23  JSR $2320
.C:7385  22         $22
.C:7386  21 20     AND ($20,X)
.C:7388  20 20 20  JSR $2020
.C:738b  20 20 20  JSR $2020
.C:738e  20 20 20  JSR $2020
.C:7391  20 3A 20  JSR $203A
.C:7394  20 20 20  JSR $2020
.C:7397  20 20 20  JSR $2020
.C:739a  20 20 20  JSR $2020
.C:739d  20 20 20  JSR $2020
.C:73a0  23         $23
.C:73a1  23         $23
.C:73a2  23         $23
.C:73a3  1E 23 23  ASL $2323,X
.C:73a6  23         $23
.C:73a7  68        PLA
.C:73a8  23         $23
.C:73a9  20 20 20  JSR $2020
.C:73ac  23         $23
.C:73ad  29 20     AND #$20
.C:73af  20 20 20  JSR $2020
.C:73b2  20 20 20  JSR $2020
.C:73b5  20 20 20  JSR $2020
.C:73b8  20 20 20  JSR $2020
.C:73bb  20 20 20  JSR $2020
.C:73be  20 20 20  JSR $2020
.C:73c1  20 20 20  JSR $2020
.C:73c4  20 20 20  JSR $2020
.C:73c7  20 23 20  JSR $2023
.C:73ca  1F         $1F
.C:73cb  68        PLA
.C:73cc  23         $23
.C:73cd  20 67 68  JSR $6867
.C:73d0  23         $23
.C:73d1  1C         $1C
.C:73d2  20 20 23  JSR $2320
.C:73d5  28        PLP
.C:73d6  27         $27
.C:73d7  20 20 20  JSR $2020
.C:73da  20 20 20  JSR $2020
.C:73dd  20 20 20  JSR $2020
.C:73e0  20 20 20  JSR $2020
.C:73e3  20 20 20  JSR $2020
.C:73e6  20 20 20  JSR $2020
.C:73e9  20 20 20  JSR $2020
.C:73ec  20 20 20  JSR $2020
.C:73ef  20 23 23  JSR $2323
.C:73f2  2A        ROL A
.C:73f3  2B         $2B
.C:73f4  23         $23
.C:73f5  20 67 68  JSR $6867
.C:73f8  28        PLP
.C:73f9  23         $23
.C:73fa  23         $23
.C:73fb  68        PLA
.C:73fc  23         $23
.C:73fd  20 28 27  JSR $2728
.C:7400  20 44 44  JSR $4444
.C:7403  44         $44
.C:7404  44         $44
.C:7405  44         $44
.C:7406  44         $44
.C:7407  44         $44
.C:7408  44         $44
.C:7409  44         $44
.C:740a  44         $44
.C:740b  20 13 15  JSR $1513
.C:740e  10 05     BPL $7415
.C:7410  12         $12
.C:7411  20 20 13  JSR $1320
.C:7414  03         $03
.C:7415  0F         $0F
.C:7416  12         $12
.C:7417  05 20     ORA $20
.C:7419  20 20 20  JSR $2020
.C:741c  20 20 20  JSR $2020
.C:741f  20 30 20  JSR $2030
.C:7422  20 20 20  JSR $2020
.C:7425  20 20 20  JSR $2020
.C:7428  20 20 20  JSR $2020
.C:742b  20 20 20  JSR $2020
.C:742e  20 20 20  JSR $2020
.C:7431  20 20 20  JSR $2020
.C:7434  02         $02
.C:7435  0F         $0F
.C:7436  0E 15 13  ASL $1315
.C:7439  20 20 0C  JSR $0C20
.C:743c  09 16     ORA #$16
.C:743e  05 13     ORA $13
.C:7440  20 20 20  JSR $2020
.C:7443  20 20 20  JSR $2020
.C:7446  20 20 20  JSR $2020
.C:7449  20 20 20  JSR $2020
.C:744c  20 20 20  JSR $2020
.C:744f  20 20 20  JSR $2020
.C:7452  20 20 20  JSR $2020
.C:7455  20 20 20  JSR $2020
.C:7458  20 20 20  JSR $2020
.C:745b  20 20 20  JSR $2020
.C:745e  20 20 20  JSR $2020
.C:7461  20 20 20  JSR $2020
.C:7464  20 20 20  JSR $2020
.C:7467  20 20 20  JSR $2020
.C:746a  20 20 20  JSR $2020
.C:746d  20 20 20  JSR $2020
.C:7470  20 20 20  JSR $2020
.C:7473  20 20 20  JSR $2020
.C:7476  20 20 20  JSR $2020
.C:7479  20 20 20  JSR $2020
.C:747c  20 20 20  JSR $2020
.C:747f  20 20 20  JSR $2020
.C:7482  20 20 20  JSR $2020
.C:7485  20 20 20  JSR $2020
.C:7488  20 20 20  JSR $2020
.C:748b  20 20 20  JSR $2020
.C:748e  20 20 20  JSR $2020
.C:7491  20 20 20  JSR $2020
.C:7494  20 20 20  JSR $2020
.C:7497  20 20 20  JSR $2020
.C:749a  20 20 20  JSR $2020
.C:749d  3F         $3F
.C:749e  40        RTI
.C:749f  43         $43
.C:74a0  20 20 20  JSR $2020
.C:74a3  20 20 20  JSR $2020
.C:74a6  20 20 20  JSR $2020
.C:74a9  20 20 20  JSR $2020
.C:74ac  20 20 20  JSR $2020
.C:74af  20 20 20  JSR $2020
.C:74b2  20 20 20  JSR $2020
.C:74b5  20 20 20  JSR $2020
.C:74b8  20 20 20  JSR $2020
.C:74bb  20 20 20  JSR $2020
.C:74be  20 20 20  JSR $2020
.C:74c1  20 20 20  JSR $2020
.C:74c4  20 41 42  JSR $4241
.C:74c7  43         $43
.C:74c8  20 20 20  JSR $2020
.C:74cb  20 20 20  JSR $2020
.C:74ce  20 20 20  JSR $2020
.C:74d1  20 20 20  JSR $2020
.C:74d4  20 20 20  JSR $2020
.C:74d7  20 20 20  JSR $2020
.C:74da  20 20 20  JSR $2020
.C:74dd  20 20 20  JSR $2020
.C:74e0  20 20 20  JSR $2020
.C:74e3  20 20 20  JSR $2020
.C:74e6  20 20 20  JSR $2020
.C:74e9  20 20 20  JSR $2020
.C:74ec  20 5A 20  JSR $205A
.C:74ef  43         $43
.C:74f0  20 20 20  JSR $2020
.C:74f3  20 20 20  JSR $2020
.C:74f6  20 20 20  JSR $2020
.C:74f9  20 20 20  JSR $2020
.C:74fc  20 20 20  JSR $2020
.C:74ff  20 06 05  JSR $0506
.C:7502  01 14     ORA ($14,X)
.C:7504  15 12     ORA $12,X
.C:7506  09 0E     ORA #$0E
.C:7508  07         $07
.C:7509  20 20 20  JSR $2020
.C:750c  20 20 20  JSR $2020
.C:750f  20 20 20  JSR $2020
.C:7512  20 20 20  JSR $2020
.C:7515  5A         $5A
.C:7516  20 43 20  JSR $2043
.C:7519  20 20 20  JSR $2020
.C:751c  20 20 20  JSR $2020
.C:751f  20 20 20  JSR $2020
.C:7522  20 20 20  JSR $2020
.C:7525  20 20 20  JSR $2020
.C:7528  20 20 20  JSR $2020
.C:752b  20 20 20  JSR $2020
.C:752e  20 20 20  JSR $2020
.C:7531  20 20 20  JSR $2020
.C:7534  20 20 20  JSR $2020
.C:7537  20 20 20  JSR $2020
.C:753a  20 20 20  JSR $2020
.C:753d  5A         $5A
.C:753e  20 43 20  JSR $2043
.C:7541  20 20 20  JSR $2020
.C:7544  20 20 20  JSR $2020
.C:7547  20 20 20  JSR $2020
.C:754a  20 20 20  JSR $2020
.C:754d  20 20 20  JSR $2020
.C:7550  20 20 20  JSR $2020
.C:7553  20 20 20  JSR $2020
.C:7556  20 20 20  JSR $2020
.C:7559  20 20 20  JSR $2020
.C:755c  20 20 20  JSR $2020
.C:755f  20 20 20  JSR $2020
.C:7562  20 20 20  JSR $2020
.C:7565  5A         $5A
.C:7566  20 43 20  JSR $2043
.C:7569  20 20 20  JSR $2020
.C:756c  20 20 20  JSR $2020
.C:756f  20 20 20  JSR $2020
.C:7572  20 80 81  JSR $8180
.C:7575  84 85     STY $85
.C:7577  88        DEY
.C:7578  89         $89
.C:7579  20 20 8C  JSR $8C20
.C:757c  8D 88 89  STA $8988
.C:757f  90 20     BCC $75A1
.C:7581  90 20     BCC $75A3
.C:7583  93         $93
.C:7584  94 20     STY $20,X
.C:7586  20 20 20  JSR $2020
.C:7589  20 20 20  JSR $2020
.C:758c  20 5A 20  JSR $205A
.C:758f  43         $43
.C:7590  20 20 20  JSR $2020
.C:7593  20 20 20  JSR $2020
.C:7596  20 20 20  JSR $2020
.C:7599  20 20 82  JSR $8220
.C:759c  83         $83
.C:759d  86 87     STX $87
.C:759f  8A        TXA
.C:75a0  8B         $8B
.C:75a1  20 20 8E  JSR $8E20
.C:75a4  8F         $8F
.C:75a5  8A        TXA
.C:75a6  8B         $8B
.C:75a7  91 92     STA ($92),Y
.C:75a9  91 92     STA ($92),Y
.C:75ab  95 96     STA $96,X
.C:75ad  20 20 20  JSR $2020
.C:75b0  20 20 20  JSR $2020
.C:75b3  20 20 20  JSR $2020
.C:75b6  20 43 3E  JSR $3E43
.C:75b9  3E 3E 3E  ROL $3E3E,X
.C:75bc  3E 3E 3E  ROL $3E3E,X
.C:75bf  3E 3E 3E  ROL $3E3E,X
.C:75c2  3E 3E 3E  ROL $3E3E,X
.C:75c5  3E 3E 3E  ROL $3E3E,X
.C:75c8  3E 3E 3E  ROL $3E3E,X
.C:75cb  3E 3E 3E  ROL $3E3E,X
.C:75ce  3E 3E 3E  ROL $3E3E,X
.C:75d1  3E 3E 3E  ROL $3E3E,X
.C:75d4  3E 3E 3E  ROL $3E3E,X
.C:75d7  3E 3E 3E  ROL $3E3E,X
.C:75da  3E 3E 3E  ROL $3E3E,X
.C:75dd  3E 3E 3E  ROL $3E3E,X
.C:75e0  3E 3E 3E  ROL $3E3E,X
.C:75e3  3E 3E 3E  ROL $3E3E,X
.C:75e6  3E 3E 3E  ROL $3E3E,X
.C:75e9  3E 3E 3E  ROL $3E3E,X
.C:75ec  3E 3E 3E  ROL $3E3E,X
.C:75ef  3E 3E 3E  ROL $3E3E,X
.C:75f2  3E 3E 3E  ROL $3E3E,X
.C:75f5  3E 3E 3E  ROL $3E3E,X
.C:75f8  3E 3E 3E  ROL $3E3E,X
.C:75fb  3E 3E 3E  ROL $3E3E,X
.C:75fe  3E 3E 3E  ROL $3E3E,X
.C:7601  3E 3E 3E  ROL $3E3E,X
.C:7604  3E 3E 3E  ROL $3E3E,X
.C:7607  3E 3E 3E  ROL $3E3E,X
.C:760a  3E 3E 3E  ROL $3E3E,X
.C:760d  3E 3E 3E  ROL $3E3E,X
.C:7610  3E 3E 3E  ROL $3E3E,X
.C:7613  3E 3E 3E  ROL $3E3E,X
.C:7616  3E 3E 3E  ROL $3E3E,X
.C:7619  3E 3E 3E  ROL $3E3E,X
.C:761c  3E 3E 3E  ROL $3E3E,X
.C:761f  3E 3E 3E  ROL $3E3E,X
.C:7622  3E 3E 3E  ROL $3E3E,X
.C:7625  3E 3E 3E  ROL $3E3E,X
.C:7628  3E 3E 3E  ROL $3E3E,X
.C:762b  3E 3E 3E  ROL $3E3E,X
.C:762e  3E 3E 3E  ROL $3E3E,X
.C:7631  3E 3E 3E  ROL $3E3E,X
.C:7634  3E 3E 3E  ROL $3E3E,X
.C:7637  3E 3E 3E  ROL $3E3E,X
.C:763a  3E 3E 3E  ROL $3E3E,X
.C:763d  3E 3E 3E  ROL $3E3E,X
.C:7640  3E 3E 3E  ROL $3E3E,X
.C:7643  3E 3E 3E  ROL $3E3E,X
.C:7646  3E 3E 3E  ROL $3E3E,X
.C:7649  3E 3E 3E  ROL $3E3E,X
.C:764c  3E 3E 3E  ROL $3E3E,X
.C:764f  3E 3E 3E  ROL $3E3E,X
.C:7652  3E 3E 3E  ROL $3E3E,X
.C:7655  3E 3E 3E  ROL $3E3E,X
.C:7658  3E 3E 3E  ROL $3E3E,X
.C:765b  3E 3E 3E  ROL $3E3E,X
.C:765e  3E 3E 3E  ROL $3E3E,X
.C:7661  3E 3E 3E  ROL $3E3E,X
.C:7664  3E 3E 3E  ROL $3E3E,X
.C:7667  3E 3E 3E  ROL $3E3E,X
.C:766a  3E 3E 3E  ROL $3E3E,X
.C:766d  3E 3E 3E  ROL $3E3E,X
.C:7670  3E 3E 3E  ROL $3E3E,X
.C:7673  3E 3E 3E  ROL $3E3E,X
.C:7676  3E 3E 3E  ROL $3E3E,X
.C:7679  3E 3E 3E  ROL $3E3E,X
.C:767c  3E 3E 3E  ROL $3E3E,X
.C:767f  3E 3E 3E  ROL $3E3E,X
.C:7682  3E 3E 3E  ROL $3E3E,X
.C:7685  3E 3E 3E  ROL $3E3E,X
.C:7688  3E 3E 3E  ROL $3E3E,X
.C:768b  3E 3E 3E  ROL $3E3E,X
.C:768e  3E 3E 3E  ROL $3E3E,X
.C:7691  3E 3E 3E  ROL $3E3E,X
.C:7694  3E 3E 3E  ROL $3E3E,X
.C:7697  3E 3E 3E  ROL $3E3E,X
.C:769a  3E 3E 3E  ROL $3E3E,X
.C:769d  3E 3E 3E  ROL $3E3E,X
.C:76a0  3E 3E 3E  ROL $3E3E,X
.C:76a3  3E 3E 3E  ROL $3E3E,X
.C:76a6  3E 3E 3E  ROL $3E3E,X
.C:76a9  3E 3E 3E  ROL $3E3E,X
.C:76ac  3E 3E 3E  ROL $3E3E,X
.C:76af  3E 3E 3E  ROL $3E3E,X
.C:76b2  3E 3E 3E  ROL $3E3E,X
.C:76b5  3E 3E 3E  ROL $3E3E,X
.C:76b8  3E 3E 3E  ROL $3E3E,X
.C:76bb  3E 3E 3E  ROL $3E3E,X
.C:76be  3E 3E 3E  ROL $3E3E,X
.C:76c1  3E 3E 3E  ROL $3E3E,X
.C:76c4  3E 3E 3E  ROL $3E3E,X
.C:76c7  3E 3E 3E  ROL $3E3E,X
.C:76ca  3E 3E 3E  ROL $3E3E,X
.C:76cd  3E 3E 3E  ROL $3E3E,X
.C:76d0  3E 3E 3E  ROL $3E3E,X
.C:76d3  3E 3E 3E  ROL $3E3E,X
.C:76d6  3E 3E 3E  ROL $3E3E,X
.C:76d9  3E 3E 3E  ROL $3E3E,X
.C:76dc  3E 3E 3E  ROL $3E3E,X
.C:76df  3E 3E 3E  ROL $3E3E,X
.C:76e2  3E 3E 3E  ROL $3E3E,X
.C:76e5  3E 3E 3E  ROL $3E3E,X
.C:76e8  3E 3E 3E  ROL $3E3E,X
.C:76eb  3E 3E 3E  ROL $3E3E,X
.C:76ee  3E 3E 3E  ROL $3E3E,X
.C:76f1  3E 3E 3E  ROL $3E3E,X
.C:76f4  3E 3E 3E  ROL $3E3E,X
.C:76f7  3E 3E 3E  ROL $3E3E,X
.C:76fa  3E 3E 3E  ROL $3E3E,X
.C:76fd  3E 3E 3E  ROL $3E3E,X
.C:7700  3E 3E 3E  ROL $3E3E,X
.C:7703  3E 3E 3E  ROL $3E3E,X
.C:7706  3E 3E 3E  ROL $3E3E,X
.C:7709  3E 3E 3E  ROL $3E3E,X
.C:770c  3E 3E 3E  ROL $3E3E,X
.C:770f  3E 3E 3E  ROL $3E3E,X
.C:7712  3E 3E 3E  ROL $3E3E,X
.C:7715  3E 3E 3E  ROL $3E3E,X
.C:7718  3E 3E 3E  ROL $3E3E,X
.C:771b  3E 3E 3E  ROL $3E3E,X
.C:771e  3E 3E 3E  ROL $3E3E,X
.C:7721  AB         $AB
.C:7722  AC 3E 3E  LDY $3E3E
.C:7725  3E 3E 3E  ROL $3E3E,X
.C:7728  3E 3E 3E  ROL $3E3E,X
.C:772b  3E 3E 3E  ROL $3E3E,X
.C:772e  3E 3E 3E  ROL $3E3E,X
.C:7731  3E 3E 3E  ROL $3E3E,X
.C:7734  3E 3E 3E  ROL $3E3E,X
.C:7737  3E 3E 3E  ROL $3E3E,X
.C:773a  3E 3E 3E  ROL $3E3E,X
.C:773d  3E 3E 3E  ROL $3E3E,X
.C:7740  3E C8 3E  ROL $3EC8,X
.C:7743  3E 3E 3E  ROL $3E3E,X
.C:7746  3E 3E AA  ROL $AA3E,X
.C:7749  65 65     ADC $65
.C:774b  AD AE AF  LDA $AFAE
.C:774e  3E 3E 3E  ROL $3E3E,X
.C:7751  3E 3E 3E  ROL $3E3E,X
.C:7754  3E 3E 3E  ROL $3E3E,X
.C:7757  3E 3E 3E  ROL $3E3E,X
.C:775a  3E 3E 3E  ROL $3E3E,X
.C:775d  3E 3E 3E  ROL $3E3E,X
.C:7760  3E 3E 3E  ROL $3E3E,X
.C:7763  3E 3E 3E  ROL $3E3E,X
.C:7766  3E 3E C7  ROL $C73E,X
.C:7769  65 C9     ADC $C9
.C:776b  CA        DEX
.C:776c  C8        INY
.C:776d  C8        INY
.C:776e  CB         $CB
.C:776f  CC 65 65  CPY $6565
.C:7772  65 65     ADC $65
.C:7774  65 65     ADC $65
.C:7776  B0 B1     BCS $7729
.C:7778  B2         $B2
.C:7779  B3         $B3
.C:777a  B4 3E     LDY $3E,X
.C:777c  3E 3E 3E  ROL $3E3E,X
.C:777f  3E 3E 3E  ROL $3E3E,X
.C:7782  B9 BA BB  LDA $BBBA,Y
.C:7785  BC BD 3E  LDY $3EBD,X
.C:7788  3E 3E 3E  ROL $3E3E,X
.C:778b  3E 3E C4  ROL $C43E,X
.C:778e  C5 C6     CMP $C6
.C:7790  65 65     ADC $65
.C:7792  65 65     ADC $65
.C:7794  65 65     ADC $65
.C:7796  65 65     ADC $65
.C:7798  65 65     ADC $65
.C:779a  65 65     ADC $65
.C:779c  65 65     ADC $65
.C:779e  65 65     ADC $65
.C:77a0  65 65     ADC $65
.C:77a2  65 B5     ADC $B5
.C:77a4  B6 B7     LDX $B7,Y
.C:77a6  B8        CLV
.C:77a7  B5 B6     LDA $B6,X
.C:77a9  B8        CLV
.C:77aa  65 65     ADC $65
.C:77ac  65 65     ADC $65
.C:77ae  65 BE     ADC $BE
.C:77b0  BF         $BF
.C:77b1  C0 C1     CPY #$C1
.C:77b3  C2         $C2
.C:77b4  C3         $C3
.C:77b5  65 65     ADC $65
.C:77b7  65 65     ADC $65
.C:77b9  65 65     ADC $65
.C:77bb  65 65     ADC $65
.C:77bd  65 65     ADC $65
.C:77bf  65 65     ADC $65
.C:77c1  65 65     ADC $65
.C:77c3  65 65     ADC $65
.C:77c5  65 65     ADC $65
.C:77c7  65 65     ADC $65
.C:77c9  65 65     ADC $65
.C:77cb  65 65     ADC $65
.C:77cd  65 65     ADC $65
.C:77cf  65 65     ADC $65
.C:77d1  65 65     ADC $65
.C:77d3  65 65     ADC $65
.C:77d5  65 65     ADC $65
.C:77d7  65 65     ADC $65
.C:77d9  65 65     ADC $65
.C:77db  65 65     ADC $65
.C:77dd  65 65     ADC $65
.C:77df  65 65     ADC $65
.C:77e1  65 65     ADC $65
.C:77e3  65 65     ADC $65
.C:77e5  65 65     ADC $65
.C:77e7  65 3E     ADC $3E
.C:77e9  3E 3E 3E  ROL $3E3E,X
.C:77ec  3E 3E 3E  ROL $3E3E,X
.C:77ef  3E AA AA  ROL $AAAA,X
.C:77f2  AA        TAX
.C:77f3  AA        TAX
.C:77f4  AA        TAX
.C:77f5  AA        TAX
.C:77f6  AA        TAX
.C:77f7  AA        TAX
.C:77f8  B4 95     LDY $95,X
.C:77fa  AA        TAX
.C:77fb  A8        TAY
.C:77fc  84 90     STY $90
.C:77fe  85 91     STA $91
.C:7800  3C         $3C
.C:7801  66 6E     ROR $6E
.C:7803  6E 60 62  ROR $6260
.C:7806  3C         $3C
.C:7807  00        BRK
.C:7808  38        SEC
.C:7809  6C C6 C6  JMP ($C6C6)
.C:780c  FE C6 C6  INC $C6C6,X
.C:780f  00        BRK
.C:7810  FC         $FC
.C:7811  C6 C6     DEC $C6
.C:7813  FC         $FC
.C:7814  C6 C6     DEC $C6
.C:7816  FC         $FC
.C:7817  00        BRK
.C:7818  3C         $3C
.C:7819  66 C0     ROR $C0
.C:781b  C0 C0     CPY #$C0
.C:781d  66 3C     ROR $3C
.C:781f  00        BRK
.C:7820  F8        SED
.C:7821  CC C6 C6  CPY $C6C6
.C:7824  C6 CC     DEC $CC
.C:7826  F8        SED
.C:7827  00        BRK
.C:7828  7E 60 60  ROR $6060,X
.C:782b  7C         $7C
.C:782c  60        RTS
.C:782d  60        RTS
.C:782e  7E 00 7E  ROR $7E00,X
.C:7831  60        RTS
.C:7832  60        RTS
.C:7833  7C         $7C
.C:7834  60        RTS
.C:7835  60        RTS
.C:7836  60        RTS
.C:7837  00        BRK
.C:7838  3E 60 C0  ROL $C060,X
.C:783b  CE C6 66  DEC $66C6
.C:783e  3E 00 C6  ROL $C600,X
.C:7841  C6 C6     DEC $C6
.C:7843  FE C6 C6  INC $C6C6,X
.C:7846  C6 00     DEC $00
.C:7848  7E 18 18  ROR $1818,X
.C:784b  18        CLC
.C:784c  18        CLC
.C:784d  18        CLC
.C:784e  7E 00 06  ROR $0600,X
.C:7851  06 06     ASL $06
.C:7853  06 06     ASL $06
.C:7855  C6 7C     DEC $7C
.C:7857  00        BRK
.C:7858  C6 CC     DEC $CC
.C:785a  D8        CLD
.C:785b  F0 F8     BEQ $7855
.C:785d  DC         $DC
.C:785e  CE 00 60  DEC $6000
.C:7861  60        RTS
.C:7862  60        RTS
.C:7863  60        RTS
.C:7864  60        RTS
.C:7865  60        RTS
.C:7866  7E 00 C6  ROR $C600,X
.C:7869  EE FE FE  INC $FEFE
.C:786c  D6 C6     DEC $C6,X
.C:786e  C6 00     DEC $00
.C:7870  C6 E6     DEC $E6
.C:7872  F6 FE     INC $FE,X
.C:7874  DE CE C6  DEC $C6CE,X
.C:7877  00        BRK
.C:7878  7C         $7C
.C:7879  C6 C6     DEC $C6
.C:787b  C6 C6     DEC $C6
.C:787d  C6 7C     DEC $7C
.C:787f  00        BRK
.C:7880  FC         $FC
.C:7881  C6 C6     DEC $C6
.C:7883  C6 FC     DEC $FC
.C:7885  C0 C0     CPY #$C0
.C:7887  00        BRK
.C:7888  7C         $7C
.C:7889  C6 C6     DEC $C6
.C:788b  C6 CE     DEC $CE
.C:788d  CC 7A 00  CPY $007A
.C:7890  FC         $FC
.C:7891  E6 C6     INC $C6
.C:7893  CC F8 DC  CPY $DCF8
.C:7896  CE 00 78  DEC $7800
.C:7899  CC C0 7C  CPY $7CC0
.C:789c  06 C6     ASL $C6
.C:789e  7C         $7C
.C:789f  00        BRK
.C:78a0  7E 18 18  ROR $1818,X
.C:78a3  18        CLC
.C:78a4  18        CLC
.C:78a5  18        CLC
.C:78a6  18        CLC
.C:78a7  00        BRK
.C:78a8  C6 C6     DEC $C6
.C:78aa  C6 C6     DEC $C6
.C:78ac  C6 C6     DEC $C6
.C:78ae  7C         $7C
.C:78af  00        BRK
.C:78b0  C6 C6     DEC $C6
.C:78b2  C6 EE     DEC $EE
.C:78b4  7C         $7C
.C:78b5  38        SEC
.C:78b6  10 00     BPL $78B8
.C:78b8  C6 C6     DEC $C6
.C:78ba  D6 FE     DEC $FE,X
.C:78bc  FE 6C 44  INC $446C,X
.C:78bf  00        BRK
.C:78c0  C6 EE     DEC $EE
.C:78c2  7C         $7C
.C:78c3  38        SEC
.C:78c4  7C         $7C
.C:78c5  EE C6 00  INC $00C6
.C:78c8  66 66     ROR $66
.C:78ca  66 3C     ROR $3C
.C:78cc  18        CLC
.C:78cd  18        CLC
.C:78ce  18        CLC
.C:78cf  00        BRK
.C:78d0  FE 0E 1C  INC $1C0E,X
.C:78d3  38        SEC
.C:78d4  70 E0     BVS $78B6
.C:78d6  FE 00 F0  INC $F000,X
.C:78d9  C0 80     CPY #$80
.C:78db  80         $80
.C:78dc  00        BRK
.C:78dd  00        BRK
.C:78de  00        BRK
.C:78df  00        BRK
.C:78e0  00        BRK
.C:78e1  00        BRK
.C:78e2  00        BRK
.C:78e3  00        BRK
.C:78e4  80         $80
.C:78e5  80         $80
.C:78e6  C0 F0     CPY #$F0
.C:78e8  FF         $FF
.C:78e9  3F         $3F
.C:78ea  1F         $1F
.C:78eb  1F         $1F
.C:78ec  0F         $0F
.C:78ed  0F         $0F
.C:78ee  0F         $0F
.C:78ef  0F         $0F
.C:78f0  F0 E0     BEQ $78D2
.C:78f2  C0 80     CPY #$80
.C:78f4  80         $80
.C:78f5  C0 E0     CPY #$E0
.C:78f7  F0 07     BEQ $7900
.C:78f9  01 01     ORA ($01,X)
.C:78fb  00        BRK
.C:78fc  00        BRK
.C:78fd  01 01     ORA ($01,X)
.C:78ff  07         $07
.C:7900  00        BRK
.C:7901  00        BRK
.C:7902  00        BRK
.C:7903  00        BRK
.C:7904  00        BRK
.C:7905  00        BRK
.C:7906  00        BRK
.C:7907  00        BRK
.C:7908  FE FC F8  INC $F8FC,X
.C:790b  F0 E0     BEQ $78ED
.C:790d  C0 80     CPY #$80
.C:790f  00        BRK
.C:7910  01 03     ORA ($03,X)
.C:7912  07         $07
.C:7913  0F         $0F
.C:7914  1F         $1F
.C:7915  3F         $3F
.C:7916  7F         $7F
.C:7917  FF         $FF
.C:7918  FF         $FF
.C:7919  FF         $FF
.C:791a  FF         $FF
.C:791b  FF         $FF
.C:791c  FF         $FF
.C:791d  FF         $FF
.C:791e  FF         $FF
.C:791f  FF         $FF
.C:7920  00        BRK
.C:7921  00        BRK
.C:7922  00        BRK
.C:7923  00        BRK
.C:7924  00        BRK
.C:7925  80         $80
.C:7926  C0 E0     CPY #$E0
.C:7928  F0 F8     BEQ $7922
.C:792a  FC         $FC
.C:792b  FE FF FF  INC $FFFF,X
.C:792e  FF         $FF
.C:792f  FF         $FF
.C:7930  0F         $0F
.C:7931  0F         $0F
.C:7932  0F         $0F
.C:7933  0F         $0F
.C:7934  1F         $1F
.C:7935  1F         $1F
.C:7936  3F         $3F
.C:7937  FF         $FF
.C:7938  80         $80
.C:7939  C0 E0     CPY #$E0
.C:793b  F0 F8     BEQ $7935
.C:793d  FC         $FC
.C:793e  FE FF 7F  INC $7FFF,X
.C:7941  3F         $3F
.C:7942  1F         $1F
.C:7943  0F         $0F
.C:7944  07         $07
.C:7945  03         $03
.C:7946  01 00     ORA ($00,X)
.C:7948  FE FC F8  INC $F8FC,X
.C:794b  F0 F8     BEQ $7945
.C:794d  FC         $FC
.C:794e  FE FF FF  INC $FFFF,X
.C:7951  FF         $FF
.C:7952  FF         $FF
.C:7953  FF         $FF
.C:7954  FE FC F8  INC $F8FC,X
.C:7957  F0 E0     BEQ $7939
.C:7959  C0 80     CPY #$80
.C:795b  00        BRK
.C:795c  00        BRK
.C:795d  00        BRK
.C:795e  00        BRK
.C:795f  00        BRK
.C:7960  00        BRK
.C:7961  00        BRK
.C:7962  00        BRK
.C:7963  00        BRK
.C:7964  03         $03
.C:7965  0F         $0F
.C:7966  3F         $3F
.C:7967  FF         $FF
.C:7968  03         $03
.C:7969  0F         $0F
.C:796a  3F         $3F
.C:796b  FF         $FF
.C:796c  FF         $FF
.C:796d  FF         $FF
.C:796e  FF         $FF
.C:796f  FF         $FF
.C:7970  00        BRK
.C:7971  00        BRK
.C:7972  00        BRK
.C:7973  00        BRK
.C:7974  00        BRK
.C:7975  18        CLC
.C:7976  18        CLC
.C:7977  00        BRK
.C:7978  FF         $FF
.C:7979  FF         $FF
.C:797a  FF         $FF
.C:797b  FF         $FF
.C:797c  FC         $FC
.C:797d  F0 C0     BEQ $793F
.C:797f  00        BRK
.C:7980  38        SEC
.C:7981  4C C6 C6  JMP $C6C6
.C:7984  C6 64     DEC $64
.C:7986  38        SEC
.C:7987  00        BRK
.C:7988  18        CLC
.C:7989  38        SEC
.C:798a  18        CLC
.C:798b  18        CLC
.C:798c  18        CLC
.C:798d  18        CLC
.C:798e  7E 00 7C  ROR $7C00,X
.C:7991  C6 0E     DEC $0E
.C:7993  3C         $3C
.C:7994  78        SEI
.C:7995  E0 FE     CPX #$FE
.C:7997  00        BRK
.C:7998  7E 0C 18  ROR $180C,X
.C:799b  3C         $3C
.C:799c  06 C6     ASL $C6
.C:799e  7C         $7C
.C:799f  00        BRK
.C:79a0  1C         $1C
.C:79a1  3C         $3C
.C:79a2  6C CC FE  JMP ($FECC)
.C:79a5  0C         $0C
.C:79a6  0C         $0C
.C:79a7  00        BRK
.C:79a8  FC         $FC
.C:79a9  C0 FC     CPY #$FC
.C:79ab  06 06     ASL $06
.C:79ad  C6 7C     DEC $7C
.C:79af  00        BRK
.C:79b0  3C         $3C
.C:79b1  60        RTS
.C:79b2  C0 FC     CPY #$FC
.C:79b4  C6 C6     DEC $C6
.C:79b6  7C         $7C
.C:79b7  00        BRK
.C:79b8  FE C6 0C  INC $0CC6,X
.C:79bb  18        CLC
.C:79bc  30 30     BMI $79EE
.C:79be  30 00     BMI $79C0
.C:79c0  78        SEI
.C:79c1  C4 E4     CPY $E4
.C:79c3  78        SEI
.C:79c4  9E         $9E
.C:79c5  86 7C     STX $7C
.C:79c7  00        BRK
.C:79c8  7C         $7C
.C:79c9  C6 C6     DEC $C6
.C:79cb  7E 06 0C  ROR $0C06,X
.C:79ce  78        SEI
.C:79cf  00        BRK
.C:79d0  FC         $FC
.C:79d1  F0 C0     BEQ $7993
.C:79d3  00        BRK
.C:79d4  00        BRK
.C:79d5  00        BRK
.C:79d6  00        BRK
.C:79d7  00        BRK
.C:79d8  00        BRK
.C:79d9  80         $80
.C:79da  C0 E0     CPY #$E0
.C:79dc  F0 F8     BEQ $79D6
.C:79de  FC         $FC
.C:79df  FC         $FC
.C:79e0  FC         $FC
.C:79e1  FC         $FC
.C:79e2  FC         $FC
.C:79e3  FC         $FC
.C:79e4  FC         $FC
.C:79e5  FC         $FC
.C:79e6  FC         $FC
.C:79e7  FC         $FC
.C:79e8  38        SEC
.C:79e9  38        SEC
.C:79ea  10 7C     BPL $7A68
.C:79ec  BA        TSX
.C:79ed  38        SEC
.C:79ee  28        PLP
.C:79ef  6C 57 FD  JMP ($FD57)
.C:79f2  FD FD 75  SBC $75FD,X
.C:79f5  DF         $DF
.C:79f6  DF         $DF
.C:79f7  DF         $DF
.C:79f8  FF         $FF
.C:79f9  FF         $FF
.C:79fa  01 05     ORA ($05,X)
.C:79fc  05 05     ORA $05
.C:79fe  05 15     ORA $15
.C:7a00  FF         $FF
.C:7a01  FF         $FF
.C:7a02  00        BRK
.C:7a03  40        RTI
.C:7a04  40        RTI
.C:7a05  40        RTI
.C:7a06  40        RTI
.C:7a07  50 1A     BVC $7A23
.C:7a09  25 5F     AND $5F
.C:7a0b  75 D7     ADC $D7,X
.C:7a0d  D7         $D7
.C:7a0e  35 0F     AND $0F,X
.C:7a10  90 60     BCC $7A72
.C:7a12  D4         $D4
.C:7a13  74         $74
.C:7a14  5C         $5C
.C:7a15  5C         $5C
.C:7a16  70 C0     BVS $79D8
.C:7a18  C0 C0     CPY #$C0
.C:7a1a  C0 C0     CPY #$C0
.C:7a1c  C0 C0     CPY #$C0
.C:7a1e  C0 C0     CPY #$C0
.C:7a20  FF         $FF
.C:7a21  FF         $FF
.C:7a22  00        BRK
.C:7a23  00        BRK
.C:7a24  00        BRK
.C:7a25  00        BRK
.C:7a26  00        BRK
.C:7a27  00        BRK
.C:7a28  30 30     BMI $7A5A
.C:7a2a  FC         $FC
.C:7a2b  FC         $FC
.C:7a2c  30 30     BMI $7A5E
.C:7a2e  30 30     BMI $7A60
.C:7a30  30 30     BMI $7A62
.C:7a32  30 30     BMI $7A64
.C:7a34  30 30     BMI $7A66
.C:7a36  30 30     BMI $7A68
.C:7a38  30 30     BMI $7A6A
.C:7a3a  31 31     AND ($31),Y
.C:7a3c  31 31     AND ($31),Y
.C:7a3e  31 30     AND ($30),Y
.C:7a40  54         $54
.C:7a41  54         $54
.C:7a42  55 31     EOR $31,X
.C:7a44  31 FD     AND ($FD),Y
.C:7a46  75 54     ADC $54,X
.C:7a48  00        BRK
.C:7a49  80         $80
.C:7a4a  80         $80
.C:7a4b  90 90     BCC $79DD
.C:7a4d  90 90     BCC $79DF
.C:7a4f  90 56     BCC $7AA7
.C:7a51  9A        TXS
.C:7a52  AA        TAX
.C:7a53  AA        TAX
.C:7a54  BA        TSX
.C:7a55  BA        TSX
.C:7a56  FE BA BA  INC $BABA,X
.C:7a59  BA        TSX
.C:7a5a  BA        TSX
.C:7a5b  BA        TSX
.C:7a5c  BA        TSX
.C:7a5d  BA        TSX
.C:7a5e  AA        TAX
.C:7a5f  AA        TAX
.C:7a60  90 90     BCC $79F2
.C:7a62  90 50     BCC $7AB4
.C:7a64  40        RTI
.C:7a65  80         $80
.C:7a66  80         $80
.C:7a67  80         $80
.C:7a68  80         $80
.C:7a69  80         $80
.C:7a6a  80         $80
.C:7a6b  80         $80
.C:7a6c  00        BRK
.C:7a6d  00        BRK
.C:7a6e  40        RTI
.C:7a6f  40        RTI
.C:7a70  AA        TAX
.C:7a71  AA        TAX
.C:7a72  AA        TAX
.C:7a73  89         $89
.C:7a74  45 45     EOR $45
.C:7a76  45 01     EOR $01
.C:7a78  32         $32
.C:7a79  3A         $3A
.C:7a7a  3A         $3A
.C:7a7b  3A         $3A
.C:7a7c  7A         $7A
.C:7a7d  7A         $7A
.C:7a7e  7A         $7A
.C:7a7f  7A         $7A
.C:7a80  7A         $7A
.C:7a81  5A         $5A
.C:7a82  1A         $1A
.C:7a83  3A         $3A
.C:7a84  3A         $3A
.C:7a85  3A         $3A
.C:7a86  3A         $3A
.C:7a87  3A         $3A
.C:7a88  3A         $3A
.C:7a89  3A         $3A
.C:7a8a  3A         $3A
.C:7a8b  39 31 31  AND $3131,Y
.C:7a8e  35 05     AND $05,X
.C:7a90  32         $32
.C:7a91  3A         $3A
.C:7a92  3A         $3A
.C:7a93  7A         $7A
.C:7a94  7A         $7A
.C:7a95  7A         $7A
.C:7a96  7A         $7A
.C:7a97  5A         $5A
.C:7a98  1A         $1A
.C:7a99  3A         $3A
.C:7a9a  3A         $3A
.C:7a9b  3A         $3A
.C:7a9c  3A         $3A
.C:7a9d  3A         $3A
.C:7a9e  3A         $3A
.C:7a9f  3A         $3A
.C:7aa0  3A         $3A
.C:7aa1  3A         $3A
.C:7aa2  0A        ASL A
.C:7aa3  09 01     ORA #$01
.C:7aa5  01 05     ORA ($05,X)
.C:7aa7  05 52     ORA $52
.C:7aa9  7A         $7A
.C:7aaa  7A         $7A
.C:7aab  7A         $7A
.C:7aac  7A         $7A
.C:7aad  3A         $3A
.C:7aae  3A         $3A
.C:7aaf  3A         $3A
.C:7ab0  30 30     BMI $7AE2
.C:7ab2  31 31     AND ($31),Y
.C:7ab4  31 31     AND ($31),Y
.C:7ab6  31 10     AND ($10),Y
.C:7ab8  3A         $3A
.C:7ab9  3A         $3A
.C:7aba  3A         $3A
.C:7abb  3A         $3A
.C:7abc  0A        ASL A
.C:7abd  0A        ASL A
.C:7abe  0A        ASL A
.C:7abf  02         $02
.C:7ac0  02         $02
.C:7ac1  02         $02
.C:7ac2  01 05     ORA ($05,X)
.C:7ac4  05 00     ORA $00
.C:7ac6  00        BRK
.C:7ac7  00        BRK
.C:7ac8  AA        TAX
.C:7ac9  6A        ROR A
.C:7aca  4A        LSR A
.C:7acb  49 05     EOR #$05
.C:7acd  05 05     ORA $05
.C:7acf  01 02     ORA ($02,X)
.C:7ad1  02         $02
.C:7ad2  02         $02
.C:7ad3  02         $02
.C:7ad4  02         $02
.C:7ad5  02         $02
.C:7ad6  02         $02
.C:7ad7  02         $02
.C:7ad8  FF         $FF
.C:7ad9  FF         $FF
.C:7ada  EA        NOP
.C:7adb  EA        NOP
.C:7adc  EF         $EF
.C:7add  EF         $EF
.C:7ade  EC EC FF  CPX $FFEC
.C:7ae1  FF         $FF
.C:7ae2  AB         $AB
.C:7ae3  AB         $AB
.C:7ae4  FB         $FB
.C:7ae5  FB         $FB
.C:7ae6  3B         $3B
.C:7ae7  3B         $3B
.C:7ae8  EC EC EF  CPX $EFEC
.C:7aeb  EF         $EF
.C:7aec  EA        NOP
.C:7aed  EA        NOP
.C:7aee  FF         $FF
.C:7aef  FF         $FF
.C:7af0  3B         $3B
.C:7af1  3B         $3B
.C:7af2  FB         $FB
.C:7af3  FB         $FB
.C:7af4  AB         $AB
.C:7af5  AB         $AB
.C:7af6  FF         $FF
.C:7af7  FF         $FF
.C:7af8  FF         $FF
.C:7af9  FF         $FF
.C:7afa  AA        TAX
.C:7afb  AA        TAX
.C:7afc  FF         $FF
.C:7afd  FF         $FF
.C:7afe  00        BRK
.C:7aff  00        BRK
.C:7b00  00        BRK
.C:7b01  00        BRK
.C:7b02  FF         $FF
.C:7b03  FF         $FF
.C:7b04  AA        TAX
.C:7b05  AA        TAX
.C:7b06  FF         $FF
.C:7b07  FF         $FF
.C:7b08  3B         $3B
.C:7b09  3B         $3B
.C:7b0a  3B         $3B
.C:7b0b  3B         $3B
.C:7b0c  3B         $3B
.C:7b0d  3B         $3B
.C:7b0e  3B         $3B
.C:7b0f  3B         $3B
.C:7b10  EC EC EC  CPX $ECEC
.C:7b13  EC EC EC  CPX $ECEC
.C:7b16  EC EC 00  CPX $00EC
.C:7b19  00        BRK
.C:7b1a  00        BRK
.C:7b1b  00        BRK
.C:7b1c  00        BRK
.C:7b1d  80         $80
.C:7b1e  80         $80
.C:7b1f  00        BRK
.C:7b20  44         $44
.C:7b21  44         $44
.C:7b22  55 55     EOR $55,X
.C:7b24  55 55     EOR $55,X
.C:7b26  55 55     EOR $55,X
.C:7b28  55 55     EOR $55,X
.C:7b2a  55 55     EOR $55,X
.C:7b2c  55 55     EOR $55,X
.C:7b2e  55 55     EOR $55,X
.C:7b30  10 54     BPL $7B86
.C:7b32  45 45     EOR $45
.C:7b34  55 55     EOR $55,X
.C:7b36  55 55     EOR $55,X
.C:7b38  0F         $0F
.C:7b39  0F         $0F
.C:7b3a  0F         $0F
.C:7b3b  0F         $0F
.C:7b3c  0F         $0F
.C:7b3d  0F         $0F
.C:7b3e  0F         $0F
.C:7b3f  0F         $0F
.C:7b40  F0 F0     BEQ $7B32
.C:7b42  F0 F0     BEQ $7B34
.C:7b44  F0 F0     BEQ $7B36
.C:7b46  F0 F0     BEQ $7B38
.C:7b48  81 9F     STA ($9F,X)
.C:7b4a  9F         $9F
.C:7b4b  83         $83
.C:7b4c  9F         $9F
.C:7b4d  9F         $9F
.C:7b4e  9F         $9F
.C:7b4f  FF         $FF
.C:7b50  01 39     ORA ($39,X)
.C:7b52  F3         $F3
.C:7b53  E7         $E7
.C:7b54  CF         $CF
.C:7b55  CF         $CF
.C:7b56  CF         $CF
.C:7b57  FF         $FF
.C:7b58  E7         $E7
.C:7b59  C7         $C7
.C:7b5a  E7         $E7
.C:7b5b  E7         $E7
.C:7b5c  E7         $E7
.C:7b5d  E7         $E7
.C:7b5e  81 FF     STA ($FF,X)
.C:7b60  55 A9     EOR $A9,X
.C:7b62  A9 55     LDA #$55
.C:7b64  55 A6     EOR $A6,X
.C:7b66  A6 55     LDX $55
.C:7b68  57         $57
.C:7b69  AB         $AB
.C:7b6a  AB         $AB
.C:7b6b  57         $57
.C:7b6c  57         $57
.C:7b6d  A7         $A7
.C:7b6e  A7         $A7
.C:7b6f  57         $57
.C:7b70  80         $80
.C:7b71  80         $80
.C:7b72  A0 A0     LDY #$A0
.C:7b74  58        CLI
.C:7b75  A8        TAY
.C:7b76  A6 56     LDX $56
.C:7b78  02         $02
.C:7b79  02         $02
.C:7b7a  09 09     ORA #$09
.C:7b7c  25 26     AND $26
.C:7b7e  A6 95     LDX $95
.C:7b80  D5 E9     CMP $E9,X
.C:7b82  E9 D5     SBC #$D5
.C:7b84  D5 E6     CMP $E6,X
.C:7b86  E6 D5     INC $D5
.C:7b88  C0 C0     CPY #$C0
.C:7b8a  E0 E0     CPX #$E0
.C:7b8c  D8        CLD
.C:7b8d  E8        INX
.C:7b8e  E6 D6     INC $D6
.C:7b90  30 63     BMI $7BF5
.C:7b92  63         $63
.C:7b93  33         $33
.C:7b94  36 66     ROL $66,X
.C:7b96  FF         $FF
.C:7b97  FF         $FF
.C:7b98  50 A5     BVC $7B3F
.C:7b9a  AF         $AF
.C:7b9b  5F         $5F
.C:7b9c  FA         $FA
.C:7b9d  80         $80
.C:7b9e  00        BRK
.C:7b9f  00        BRK
.C:7ba0  AA        TAX
.C:7ba1  AA        TAX
.C:7ba2  AA        TAX
.C:7ba3  AA        TAX
.C:7ba4  AA        TAX
.C:7ba5  AA        TAX
.C:7ba6  AA        TAX
.C:7ba7  AA        TAX
.C:7ba8  AA        TAX
.C:7ba9  AA        TAX
.C:7baa  AA        TAX
.C:7bab  AA        TAX
.C:7bac  AA        TAX
.C:7bad  AA        TAX
.C:7bae  AA        TAX
.C:7baf  AA        TAX
.C:7bb0  00        BRK
.C:7bb1  00        BRK
.C:7bb2  00        BRK
.C:7bb3  3C         $3C
.C:7bb4  3C         $3C
.C:7bb5  00        BRK
.C:7bb6  00        BRK
.C:7bb7  00        BRK
.C:7bb8  C7         $C7
.C:7bb9  93         $93
.C:7bba  39 39 01  AND $0139,Y
.C:7bbd  39 39 FF  AND $FF39,Y
.C:7bc0  F3         $F3
.C:7bc1  E7         $E7
.C:7bc2  CF         $CF
.C:7bc3  9F         $9F
.C:7bc4  CF         $CF
.C:7bc5  E7         $E7
.C:7bc6  F3         $F3
.C:7bc7  FF         $FF
.C:7bc8  9F         $9F
.C:7bc9  CF         $CF
.C:7bca  E7         $E7
.C:7bcb  F3         $F3
.C:7bcc  E7         $E7
.C:7bcd  CF         $CF
.C:7bce  9F         $9F
.C:7bcf  FF         $FF
.C:7bd0  9C         $9C
.C:7bd1  99 93 87  STA $8793,Y
.C:7bd4  83         $83
.C:7bd5  91 98     STA ($98),Y
.C:7bd7  FF         $FF
.C:7bd8  F9 F9 F9  SBC $F9F9,Y
.C:7bdb  F9 F9 39  SBC $39F9,Y
.C:7bde  83         $83
.C:7bdf  FF         $FF
.C:7be0  78        SEI
.C:7be1  CC 78 F0  CPY $F078
.C:7be4  CE CC 7E  DEC $7ECC
.C:7be7  00        BRK
.C:7be8  00        BRK
.C:7be9  00        BRK
.C:7bea  00        BRK
.C:7beb  00        BRK
.C:7bec  00        BRK
.C:7bed  18        CLC
.C:7bee  18        CLC
.C:7bef  30 06     BMI $7BF7
.C:7bf1  0C         $0C
.C:7bf2  18        CLC
.C:7bf3  18        CLC
.C:7bf4  18        CLC
.C:7bf5  0C         $0C
.C:7bf6  06 00     ASL $00
.C:7bf8  60        RTS
.C:7bf9  30 18     BMI $7C13
.C:7bfb  18        CLC
.C:7bfc  18        CLC
.C:7bfd  30 60     BMI $7C5F
.C:7bff  00        BRK
.C:7c00  0A        ASL A
.C:7c01  3F         $3F
.C:7c02  3F         $3F
.C:7c03  03         $03
.C:7c04  03         $03
.C:7c05  03         $03
.C:7c06  03         $03
.C:7c07  03         $03
.C:7c08  AA        TAX
.C:7c09  FE FC E0  INC $E0FC,X
.C:7c0c  E0 E0     CPX #$E0
.C:7c0e  E0 E0     CPX #$E0
.C:7c10  03         $03
.C:7c11  03         $03
.C:7c12  03         $03
.C:7c13  03         $03
.C:7c14  03         $03
.C:7c15  03         $03
.C:7c16  03         $03
.C:7c17  00        BRK
.C:7c18  E0 E0     CPX #$E0
.C:7c1a  E0 E0     CPX #$E0
.C:7c1c  E0 E0     CPX #$E0
.C:7c1e  C0 00     CPY #$00
.C:7c20  0A        ASL A
.C:7c21  3E 3E 3E  ROL $3E3E,X
.C:7c24  3E 3E 3E  ROL $3E3E,X
.C:7c27  3F         $3F
.C:7c28  0A        ASL A
.C:7c29  3E 3E 3E  ROL $3E3E,X
.C:7c2c  3E 3E BE  ROL $BE3E,X
.C:7c2f  FE 3F 3E  INC $3E3F,X
.C:7c32  3E 3E 3E  ROL $3E3E,X
.C:7c35  3E 3C 00  ROL $003C,X
.C:7c38  FE 3E 3E  INC $3E3E,X
.C:7c3b  3E 3E 3E  ROL $3E3E,X
.C:7c3e  3C         $3C
.C:7c3f  00        BRK
.C:7c40  0A        ASL A
.C:7c41  3F         $3F
.C:7c42  3F         $3F
.C:7c43  3E 3E 3E  ROL $3E3E,X
.C:7c46  3E 3F AA  ROL $AA3F,X
.C:7c49  FE FC 00  INC $00FC,X
.C:7c4c  00        BRK
.C:7c4d  00        BRK
.C:7c4e  A0 E0     LDY #$E0
.C:7c50  3F         $3F
.C:7c51  3E 3E 3E  ROL $3E3E,X
.C:7c54  3E 3F 3F  ROL $3F3F,X
.C:7c57  00        BRK
.C:7c58  C0 00     CPY #$00
.C:7c5a  00        BRK
.C:7c5b  00        BRK
.C:7c5c  AA        TAX
.C:7c5d  FE FC 00  INC $00FC,X
.C:7c60  0A        ASL A
.C:7c61  3F         $3F
.C:7c62  3F         $3F
.C:7c63  3E 3E 3E  ROL $3E3E,X
.C:7c66  3E 3F A8  ROL $A83F,X
.C:7c69  F8        SED
.C:7c6a  FA         $FA
.C:7c6b  3E 3E 3E  ROL $3E3E,X
.C:7c6e  BC F8 3F  LDY $3FF8,X
.C:7c71  3E 3E 3E  ROL $3E3E,X
.C:7c74  3E 3F 3F  ROL $3F3F,X
.C:7c77  00        BRK
.C:7c78  FA         $FA
.C:7c79  3E 3E 3E  ROL $3E3E,X
.C:7c7c  BC F8 F0  LDY $F0F8,X
.C:7c7f  00        BRK
.C:7c80  0A        ASL A
.C:7c81  3E 3E 3E  ROL $3E3E,X
.C:7c84  3E 3E 3E  ROL $3E3E,X
.C:7c87  3E 3E 3E  ROL $3E3E,X
.C:7c8a  3E 3E 3E  ROL $3E3E,X
.C:7c8d  3F         $3F
.C:7c8e  3F         $3F
.C:7c8f  00        BRK
.C:7c90  00        BRK
.C:7c91  00        BRK
.C:7c92  00        BRK
.C:7c93  00        BRK
.C:7c94  AA        TAX
.C:7c95  FE FC 00  INC $00FC,X
.C:7c98  02         $02
.C:7c99  0F         $0F
.C:7c9a  0F         $0F
.C:7c9b  3E 3E 3E  ROL $3E3E,X
.C:7c9e  3E 0F A8  ROL $A80F,X
.C:7ca1  F8        SED
.C:7ca2  FA         $FA
.C:7ca3  3E 3C 00  ROL $003C,X
.C:7ca6  A8        TAY
.C:7ca7  F8        SED
.C:7ca8  0F         $0F
.C:7ca9  00        BRK
.C:7caa  0A        ASL A
.C:7cab  3E 3E 0F  ROL $0F3E,X
.C:7cae  0F         $0F
.C:7caf  00        BRK
.C:7cb0  FA         $FA
.C:7cb1  3E 3E 3E  ROL $3E3E,X
.C:7cb4  BC F8 F0  LDY $F0F8,X
.C:7cb7  00        BRK
.C:7cb8  30 30     BMI $7CEA
.C:7cba  30 30     BMI $7CEC
.C:7cbc  00        BRK
.C:7cbd  30 30     BMI $7CEF
.C:7cbf  00        BRK
.C:7cc0  00        BRK
.C:7cc1  02         $02
.C:7cc2  00        BRK
.C:7cc3  00        BRK
.C:7cc4  31 00     AND ($00),Y
.C:7cc6  F0 AA     BEQ $7C72
.C:7cc8  50 1E     BVC $7CE8
.C:7cca  00        BRK
.C:7ccb  FA         $FA
.C:7ccc  BE 50 28  LDX $2850,Y
.C:7ccf  A0 DE     LDY #$DE
.C:7cd1  5A         $5A
.C:7cd2  1E 82 64  ASL $6482,X
.C:7cd5  AA        TAX
.C:7cd6  F0 1E     BEQ $7CF6
.C:7cd8  32         $32
.C:7cd9  00        BRK
.C:7cda  AA        TAX
.C:7cdb  AA        TAX
.C:7cdc  AA        TAX
.C:7cdd  AA        TAX
.C:7cde  AA        TAX
.C:7cdf  AA        TAX
.C:7ce0  00        BRK
.C:7ce1  C0 00     CPY #$00
.C:7ce3  00        BRK
.C:7ce4  81 00     STA ($00,X)
.C:7ce6  F0 AA     BEQ $7C92
.C:7ce8  AA        TAX
.C:7ce9  AA        TAX
.C:7cea  AA        TAX
.C:7ceb  AA        TAX
.C:7cec  AA        TAX
.C:7ced  AA        TAX
.C:7cee  AA        TAX
.C:7cef  AA        TAX
.C:7cf0  AA        TAX
.C:7cf1  AA        TAX
.C:7cf2  AA        TAX
.C:7cf3  AA        TAX
.C:7cf4  AA        TAX
.C:7cf5  AA        TAX
.C:7cf6  AA        TAX
.C:7cf7  AA        TAX
.C:7cf8  AA        TAX
.C:7cf9  AA        TAX
.C:7cfa  AA        TAX
.C:7cfb  AA        TAX
.C:7cfc  AA        TAX
.C:7cfd  AA        TAX
.C:7cfe  AA        TAX
.C:7cff  AA        TAX
.C:7d00  3F         $3F
.C:7d01  3F         $3F
.C:7d02  0F         $0F
.C:7d03  0B         $0B
.C:7d04  26 2A     ROL $2A
.C:7d06  2A        ROL A
.C:7d07  0A        ASL A
.C:7d08  F0 FC     BEQ $7D06
.C:7d0a  FC         $FC
.C:7d0b  FC         $FC
.C:7d0c  FF         $FF
.C:7d0d  BF         $BF
.C:7d0e  BF         $BF
.C:7d0f  BF         $BF
.C:7d10  0A        ASL A
.C:7d11  82         $82
.C:7d12  8F         $8F
.C:7d13  8F         $8F
.C:7d14  8E AE 2A  STX $2AAE
.C:7d17  0B         $0B
.C:7d18  BF         $BF
.C:7d19  BF         $BF
.C:7d1a  7F         $7F
.C:7d1b  7F         $7F
.C:7d1c  5F         $5F
.C:7d1d  5F         $5F
.C:7d1e  5C         $5C
.C:7d1f  50 0F     BVC $7D30
.C:7d21  0F         $0F
.C:7d22  0F         $0F
.C:7d23  0F         $0F
.C:7d24  3E 3E 3E  ROL $3E3E,X
.C:7d27  3E A0 A0  ROL $A0A0,X
.C:7d2a  A0 A0     LDY #$A0
.C:7d2c  A8        TAY
.C:7d2d  A8        TAY
.C:7d2e  A8        TAY
.C:7d2f  A8        TAY
.C:7d30  FE FE FF  INC $FFFE,X
.C:7d33  FF         $FF
.C:7d34  FF         $FF
.C:7d35  3F         $3F
.C:7d36  3F         $3F
.C:7d37  0F         $0F
.C:7d38  AA        TAX
.C:7d39  AA        TAX
.C:7d3a  AA        TAX
.C:7d3b  AA        TAX
.C:7d3c  EB         $EB
.C:7d3d  FF         $FF
.C:7d3e  FC         $FC
.C:7d3f  FC         $FC
.C:7d40  AA        TAX
.C:7d41  AA        TAX
.C:7d42  AA        TAX
.C:7d43  AA        TAX
.C:7d44  AA        TAX
.C:7d45  AA        TAX
.C:7d46  AA        TAX
.C:7d47  AA        TAX
.C:7d48  AA        TAX
.C:7d49  AA        TAX
.C:7d4a  AA        TAX
.C:7d4b  AA        TAX
.C:7d4c  AA        TAX
.C:7d4d  AA        TAX
.C:7d4e  AA        TAX
.C:7d4f  AA        TAX
.C:7d50  56 FE     LSR $FE,X
.C:7d52  FE F9 79  INC $79F9,X
.C:7d55  E5 A5     SBC $A5
.C:7d57  95 57     STA $57,X
.C:7d59  FD FD FD  SBC $FDFD,X
.C:7d5c  76 DA     ROR $DA,X
.C:7d5e  E9 A5     SBC #$A5
.C:7d60  57         $57
.C:7d61  FD FD FD  SBC $FDFD,X
.C:7d64  B5 9F     LDA $9F,X
.C:7d66  6B         $6B
.C:7d67  6B         $6B
.C:7d68  97         $97
.C:7d69  BD BD 6E  LDA $6EBD,X
.C:7d6c  6A        ROR A
.C:7d6d  59 55 55  EOR $5555,Y
.C:7d70  57         $57
.C:7d71  FA         $FA
.C:7d72  EA        NOP
.C:7d73  A5 95     LDA $95
.C:7d75  55 55     EOR $55,X
.C:7d77  55 57     EOR $57,X
.C:7d79  BD BD 6D  LDA $6DBD,X
.C:7d7c  6B         $6B
.C:7d7d  5B         $5B
.C:7d7e  56 56     LSR $56,X
.C:7d80  57         $57
.C:7d81  BD BD AD  LDA $ADBD,X
.C:7d84  6B         $6B
.C:7d85  5A         $5A
.C:7d86  56 55     LSR $55,X
.C:7d88  57         $57
.C:7d89  FD FD FD  SBC $FDFD,X
.C:7d8c  75 DF     ADC $DF,X
.C:7d8e  9E         $9E
.C:7d8f  AA        TAX
.C:7d90  57         $57
.C:7d91  FD FD FD  SBC $FDFD,X
.C:7d94  75 DF     ADC $DF,X
.C:7d96  9E         $9E
.C:7d97  AA        TAX
.C:7d98  57         $57
.C:7d99  FD FD FD  SBC $FDFD,X
.C:7d9c  75 9F     ADC $9F,X
.C:7d9e  AF         $AF
.C:7d9f  6A        ROR A
.C:7da0  57         $57
.C:7da1  FD FD FD  SBC $FDFD,X
.C:7da4  75 9F     ADC $9F,X
.C:7da6  AF         $AF
.C:7da7  6A        ROR A
.C:7da8  AA        TAX
.C:7da9  AA        TAX
.C:7daa  55 55     EOR $55,X
.C:7dac  55 55     EOR $55,X
.C:7dae  55 55     EOR $55,X
.C:7db0  A7         $A7
.C:7db1  A9 5A     LDA #$5A
.C:7db3  56 55     LSR $55,X
.C:7db5  55 55     EOR $55,X
.C:7db7  55 57     EOR $57,X
.C:7db9  FD FD AA  SBC $AAFD,X
.C:7dbc  AA        TAX
.C:7dbd  55 55     EOR $55,X
.C:7dbf  55 56     EOR $56,X
.C:7dc1  FA         $FA
.C:7dc2  E9 A5     SBC #$A5
.C:7dc4  95 55     STA $55,X
.C:7dc6  55 55     EOR $55,X
.C:7dc8  57         $57
.C:7dc9  FE FA F9  INC $F9FA,X
.C:7dcc  65 E5     ADC $E5
.C:7dce  95 95     STA $95,X
.C:7dd0  57         $57
.C:7dd1  FD AD A9  SBC $A9AD,X
.C:7dd4  5A         $5A
.C:7dd5  56 55     LSR $55,X
.C:7dd7  55 57     EOR $57,X
.C:7dd9  FD FE FA  SBC $FAFE,X
.C:7ddc  A9 A5     LDA #$A5
.C:7dde  55 55     EOR $55,X
.C:7de0  57         $57
.C:7de1  FD AD AA  SBC $AAAD,X
.C:7de4  5A         $5A
.C:7de5  55 55     EOR $55,X
.C:7de7  55 57     EOR $57,X
.C:7de9  FD FD FD  SBC $FDFD,X
.C:7dec  A5 AB     LDA $AB
.C:7dee  5A         $5A
.C:7def  56 97     LSR $97,X
.C:7df1  BD 6D 6A  LDA $6A6D,X
.C:7df4  5A         $5A
.C:7df5  55 55     EOR $55,X
.C:7df7  55 57     EOR $57,X
.C:7df9  FD FD FE  SBC $FEFD,X
.C:7dfc  7A         $7A
.C:7dfd  99 A5 65  STA $65A5,Y
.C:7e00  57         $57
.C:7e01  FD FA AA  SBC $AAFA,X
.C:7e04  A5 55     LDA $55
.C:7e06  55 55     EOR $55,X
.C:7e08  57         $57
.C:7e09  FD AA AA  SBC $AAAA,X
.C:7e0c  55 55     EOR $55,X
.C:7e0e  55 55     EOR $55,X
.C:7e10  57         $57
.C:7e11  FD FD BD  SBC $BDFD,X
.C:7e14  A5 6A     LDA $6A
.C:7e16  5A         $5A
.C:7e17  55 56     EOR $56,X
.C:7e19  FA         $FA
.C:7e1a  E9 E5     SBC #$E5
.C:7e1c  95 95     STA $95,X
.C:7e1e  55 55     EOR $55,X
.C:7e20  57         $57
.C:7e21  FE FA F9  INC $F9FA,X
.C:7e24  65 E5     ADC $E5
.C:7e26  95 95     STA $95,X
.C:7e28  57         $57
.C:7e29  BD AA 6A  LDA $6AAA,X
.C:7e2c  55 55     EOR $55,X
.C:7e2e  55 55     EOR $55,X
.C:7e30  56 FA     LSR $FA,X
.C:7e32  A9 A5     LDA #$A5
.C:7e34  55 55     EOR $55,X
.C:7e36  55 55     EOR $55,X
.C:7e38  56 FE     LSR $FE,X
.C:7e3a  FE FE 79  INC $79FE,X
.C:7e3d  D9 A5 A5  CMP $A5A5,Y
.C:7e40  57         $57
.C:7e41  FD FD FD  SBC $FDFD,X
.C:7e44  75 DF     ADC $DF,X
.C:7e46  AA        TAX
.C:7e47  AA        TAX
.C:7e48  97         $97
.C:7e49  BD 6D 6D  LDA $6D6D,X
.C:7e4c  59 5A 56  EOR $565A,Y
.C:7e4f  55 57     EOR $57,X
.C:7e51  FD FD FD  SBC $FDFD,X
.C:7e54  65 AF     ADC $AF
.C:7e56  9A        TXS
.C:7e57  5A         $5A
.C:7e58  57         $57
.C:7e59  FD FD FA  SBC $FAFD,X
.C:7e5c  6A        ROR A
.C:7e5d  E5 95     SBC $95
.C:7e5f  95 57     STA $57,X
.C:7e61  FD FD FD  SBC $FDFD,X
.C:7e64  B5 AA     LDA $AA,X
.C:7e66  6A        ROR A
.C:7e67  55 AA     EOR $AA,X
.C:7e69  AA        TAX
.C:7e6a  AA        TAX
.C:7e6b  AA        TAX
.C:7e6c  AA        TAX
.C:7e6d  AA        TAX
.C:7e6e  AA        TAX
.C:7e6f  AA        TAX
.C:7e70  AA        TAX
.C:7e71  AA        TAX
.C:7e72  AA        TAX
.C:7e73  AA        TAX
.C:7e74  AA        TAX
.C:7e75  AA        TAX
.C:7e76  AA        TAX
.C:7e77  AA        TAX
.C:7e78  AA        TAX
.C:7e79  AA        TAX
.C:7e7a  AA        TAX
.C:7e7b  AA        TAX
.C:7e7c  AA        TAX
.C:7e7d  AA        TAX
.C:7e7e  AA        TAX
.C:7e7f  AA        TAX
.C:7e80  AA        TAX
.C:7e81  AA        TAX
.C:7e82  AA        TAX
.C:7e83  AA        TAX
.C:7e84  AA        TAX
.C:7e85  AA        TAX
.C:7e86  AA        TAX
.C:7e87  AA        TAX
.C:7e88  AA        TAX
.C:7e89  AA        TAX
.C:7e8a  AA        TAX
.C:7e8b  AA        TAX
.C:7e8c  AA        TAX
.C:7e8d  AA        TAX
.C:7e8e  AA        TAX
.C:7e8f  AA        TAX
.C:7e90  AA        TAX
.C:7e91  AA        TAX
.C:7e92  AA        TAX
.C:7e93  AA        TAX
.C:7e94  AA        TAX
.C:7e95  AA        TAX
.C:7e96  AA        TAX
.C:7e97  AA        TAX
.C:7e98  AA        TAX
.C:7e99  AA        TAX
.C:7e9a  AA        TAX
.C:7e9b  AA        TAX
.C:7e9c  AA        TAX
.C:7e9d  AA        TAX
.C:7e9e  AA        TAX
.C:7e9f  AA        TAX
.C:7ea0  AA        TAX
.C:7ea1  AA        TAX
.C:7ea2  AA        TAX
.C:7ea3  AA        TAX
.C:7ea4  AA        TAX
.C:7ea5  AA        TAX
.C:7ea6  AA        TAX
.C:7ea7  AA        TAX
.C:7ea8  AA        TAX
.C:7ea9  AA        TAX
.C:7eaa  AA        TAX
.C:7eab  AA        TAX
.C:7eac  AA        TAX
.C:7ead  AA        TAX
.C:7eae  AA        TAX
.C:7eaf  AA        TAX
.C:7eb0  AA        TAX
.C:7eb1  AA        TAX
.C:7eb2  AA        TAX
.C:7eb3  AA        TAX
.C:7eb4  AA        TAX
.C:7eb5  AA        TAX
.C:7eb6  AA        TAX
.C:7eb7  AA        TAX
.C:7eb8  AA        TAX
.C:7eb9  AA        TAX
.C:7eba  AA        TAX
.C:7ebb  AA        TAX
.C:7ebc  AA        TAX
.C:7ebd  AA        TAX
.C:7ebe  AA        TAX
.C:7ebf  AA        TAX
.C:7ec0  AA        TAX
.C:7ec1  AA        TAX
.C:7ec2  AA        TAX
.C:7ec3  AA        TAX
.C:7ec4  AA        TAX
.C:7ec5  AA        TAX
.C:7ec6  AA        TAX
.C:7ec7  AA        TAX
.C:7ec8  AA        TAX
.C:7ec9  AA        TAX
.C:7eca  AA        TAX
.C:7ecb  AA        TAX
.C:7ecc  AA        TAX
.C:7ecd  AA        TAX
.C:7ece  AA        TAX
.C:7ecf  AA        TAX
.C:7ed0  AA        TAX
.C:7ed1  AA        TAX
.C:7ed2  AA        TAX
.C:7ed3  AA        TAX
.C:7ed4  AA        TAX
.C:7ed5  AA        TAX
.C:7ed6  AA        TAX
.C:7ed7  AA        TAX
.C:7ed8  AA        TAX
.C:7ed9  AA        TAX
.C:7eda  AA        TAX
.C:7edb  AA        TAX
.C:7edc  AA        TAX
.C:7edd  AA        TAX
.C:7ede  AA        TAX
.C:7edf  AA        TAX
.C:7ee0  AA        TAX
.C:7ee1  AA        TAX
.C:7ee2  AA        TAX
.C:7ee3  AA        TAX
.C:7ee4  AA        TAX
.C:7ee5  AA        TAX
.C:7ee6  AA        TAX
.C:7ee7  AA        TAX
.C:7ee8  AA        TAX
.C:7ee9  AA        TAX
.C:7eea  AA        TAX
.C:7eeb  AA        TAX
.C:7eec  AA        TAX
.C:7eed  AA        TAX
.C:7eee  AA        TAX
.C:7eef  AA        TAX
.C:7ef0  AA        TAX
.C:7ef1  AA        TAX
.C:7ef2  AA        TAX
.C:7ef3  AA        TAX
.C:7ef4  AA        TAX
.C:7ef5  AA        TAX
.C:7ef6  AA        TAX
.C:7ef7  AA        TAX
.C:7ef8  AA        TAX
.C:7ef9  AA        TAX
.C:7efa  AA        TAX
.C:7efb  AA        TAX
.C:7efc  AA        TAX
.C:7efd  AA        TAX
.C:7efe  AA        TAX
.C:7eff  AA        TAX
.C:7f00  0C         $0C
.C:7f01  11 14     ORA ($14),Y
.C:7f03  13         $13
.C:7f04  14         $14
.C:7f05  13         $13
.C:7f06  11 14     ORA ($14),Y
.C:7f08  13         $13
.C:7f09  14         $14
.C:7f0a  11 13     ORA ($13),Y
.C:7f0c  14         $14
.C:7f0d  13         $13
.C:7f0e  14         $14
.C:7f0f  11 00     ORA ($00),Y
.C:7f11  0F         $0F
.C:7f12  14         $14
.C:7f13  19 16 19  ORA $1916,Y
.C:7f16  16 14     ASL $14,X
.C:7f18  19 16 19  ORA $1916,Y
.C:7f1b  14         $14
.C:7f1c  16 19     ASL $19,X
.C:7f1e  16 19     ASL $19,X
.C:7f20  14         $14
.C:7f21  00        BRK
.C:7f22  1E 22 1E  ASL $1E22,X
.C:7f25  22         $22
.C:7f26  1E 16 19  ASL $1916,X
.C:7f29  1E 19 16  ASL $1619,X
.C:7f2c  16 14     ASL $14,X
.C:7f2e  16 14     ASL $14,X
.C:7f30  0F         $0F
.C:7f31  11 14     ORA ($14),Y
.C:7f33  11 0F     ORA ($0F),Y
.C:7f35  11 14     ORA ($14),Y
.C:7f37  0F         $0F
.C:7f38  14         $14
.C:7f39  0D 0F 11  ORA $110F
.C:7f3c  0F         $0F
.C:7f3d  19 16 14  ORA $1416,Y
.C:7f40  D8        CLD
.C:7f41  25 64     AND $64
.C:7f43  3F         $3F
.C:7f44  64         $64
.C:7f45  3F         $3F
.C:7f46  25 64     AND $64
.C:7f48  3F         $3F
.C:7f49  64         $64
.C:7f4a  25 3F     AND $3F
.C:7f4c  64         $64
.C:7f4d  3F         $3F
.C:7f4e  64         $64
.C:7f4f  25 00     AND $00
.C:7f51  46 64     LSR $64
.C:7f53  B1 E3     LDA ($E3),Y
.C:7f55  B1 E3     LDA ($E3),Y
.C:7f57  64         $64
.C:7f58  B1 E3     LDA ($E3),Y
.C:7f5a  B1 64     LDA ($64),Y
.C:7f5c  E3         $E3
.C:7f5d  B1 E3     LDA ($E3),Y
.C:7f5f  B1 64     LDA ($64),Y
.C:7f61  00        BRK
.C:7f62  8D 4B 8D  STA $8D4B
.C:7f65  4B         $4B
.C:7f66  8D E3 B1  STA $B1E3
.C:7f69  8D B1 E3  STA $E3B1
.C:7f6c  E3         $E3
.C:7f6d  64         $64
.C:7f6e  E3         $E3
.C:7f6f  64         $64
.C:7f70  46 25     LSR $25
.C:7f72  64         $64
.C:7f73  25 46     AND $46
.C:7f75  25 64     AND $64
.C:7f77  46 64     LSR $64
.C:7f79  9C         $9C
.C:7f7a  46 25     LSR $25
.C:7f7c  46 B1     LSR $B1
.C:7f7e  E3         $E3
.C:7f7f  64         $64
.C:7f80  08        PHP
.C:7f81  10 08     BPL $7F8B
.C:7f83  08        PHP
.C:7f84  08        PHP
.C:7f85  08        PHP
.C:7f86  10 08     BPL $7F90
.C:7f88  10 08     BPL $7F92
.C:7f8a  08        PHP
.C:7f8b  08        PHP
.C:7f8c  08        PHP
.C:7f8d  10 08     BPL $7F97
.C:7f8f  20 08 08  JSR $0808
.C:7f92  10 08     BPL $7F9C
.C:7f94  08        PHP
.C:7f95  08        PHP
.C:7f96  08        PHP
.C:7f97  10 08     BPL $7FA1
.C:7f99  10 08     BPL $7FA3
.C:7f9b  08        PHP
.C:7f9c  08        PHP
.C:7f9d  08        PHP
.C:7f9e  10 08     BPL $7FA8
.C:7fa0  20 08 08  JSR $0808
.C:7fa3  10 08     BPL $7FAD
.C:7fa5  10 08     BPL $7FAF
.C:7fa7  08        PHP
.C:7fa8  08        PHP
.C:7fa9  08        PHP
.C:7faa  10 08     BPL $7FB4
.C:7fac  10 08     BPL $7FB6
.C:7fae  10 08     BPL $7FB8
.C:7fb0  08        PHP
.C:7fb1  08        PHP
.C:7fb2  08        PHP
.C:7fb3  10 08     BPL $7FBD
.C:7fb5  10 08     BPL $7FBF
.C:7fb7  10 08     BPL $7FC1
.C:7fb9  08        PHP
.C:7fba  08        PHP
.C:7fbb  08        PHP
.C:7fbc  10 08     BPL $7FC6
.C:7fbe  23         $23
.C:7fbf  30 AA     BMI $7F6B
.C:7fc1  AA        TAX
.C:7fc2  AA        TAX
.C:7fc3  AA        TAX
.C:7fc4  AA        TAX
.C:7fc5  AA        TAX
.C:7fc6  AA        TAX
.C:7fc7  AA        TAX
.C:7fc8  AA        TAX
.C:7fc9  AA        TAX
.C:7fca  AA        TAX
.C:7fcb  AA        TAX
.C:7fcc  AA        TAX
.C:7fcd  AA        TAX
.C:7fce  AA        TAX
.C:7fcf  AA        TAX
.C:7fd0  AA        TAX
.C:7fd1  AA        TAX
.C:7fd2  AA        TAX
.C:7fd3  AA        TAX
.C:7fd4  AA        TAX
.C:7fd5  AA        TAX
.C:7fd6  AA        TAX
.C:7fd7  AA        TAX
.C:7fd8  AA        TAX
.C:7fd9  AA        TAX
.C:7fda  AA        TAX
.C:7fdb  AA        TAX
.C:7fdc  AA        TAX
.C:7fdd  AA        TAX
.C:7fde  AA        TAX
.C:7fdf  AA        TAX
.C:7fe0  AA        TAX
.C:7fe1  AA        TAX
.C:7fe2  AA        TAX
.C:7fe3  AA        TAX
.C:7fe4  AA        TAX
.C:7fe5  AA        TAX
.C:7fe6  AA        TAX
.C:7fe7  AA        TAX
.C:7fe8  AA        TAX
.C:7fe9  AA        TAX
.C:7fea  AA        TAX
.C:7feb  AA        TAX
.C:7fec  AA        TAX
.C:7fed  AA        TAX
.C:7fee  AA        TAX
.C:7fef  AA        TAX
.C:7ff0  AA        TAX
.C:7ff1  AA        TAX
.C:7ff2  AA        TAX
.C:7ff3  AA        TAX
.C:7ff4  AA        TAX
.C:7ff5  AA        TAX
.C:7ff6  AA        TAX
.C:7ff7  AA        TAX
.C:7ff8  AA        TAX
.C:7ff9  AA        TAX
.C:7ffa  AA        TAX
.C:7ffb  AA        TAX
.C:7ffc  AA        TAX
.C:7ffd  AA        TAX
.C:7ffe  AA        TAX
.C:7fff  AA        TAX