*=$140

  JSR $FFD2
  LDA #$01
  STA $FF15
  LDX #$0F
NLoop1
  LDA $0337,X
  AND #$3F
  STA $0D52,X
  LDA #$71
  STA $0952,X
  LDA $0215,X
  STA $0FA4,X
  LDA #$51
  STA $0BA4,X
  DEX
  BPL NLoop1
  LDX #$14
NLoop2
  LDA $0229,X
  STA $0333,X
  DEX
  BPL NLoop2
  LDA #$60
  STA $03F2
  LDA #$33
  STA $032E
  LDA #$03
  STA $032F
  LDA #$25
  STA $AF
  LDA #$02
  STA $B0
  LDA #$04
  STA $AB
  JSR $033C
  LDA $90
  BNE NLoop4
  STX $2D
  STY $2E
  JSR $03F2
  JSR $FFE1
  BEQ NLoop4
  LDX #$05
  STX $EF
  LDA $01AD,X
  STA $0526,X
  DEX
  BNE NLoop4
  RTS
  JMP $800D          ; Executes BASIC Code
Command
    text "run:"
    bytes 13


NLoop4
    LDX #$00
NLoop5
 STA $0200,X
 DEX
 BNE Nloop5
 INC $01B7
 BNE NLoop5
 JMP ($FFFC)
Start
 LDA #$01
 STA $053B
 JSR $FF84
 LDA #$93
 JSR $FFD2
 JMP $140

;*=$0300
; NOP
; NOP
; NOP
; LDA #$01
; STA $053B
; JSR $FF84
; LDA #$93
; JSR $FFD2
; LDA #$8E
; JMP $0140
; ASL $160F
; ORA ($0C,X)
; SLO $0401
; JSR $310D
; BMI $1352
; BMI $1354
; NOP
; LSR $564F
; EOR ($A6,X)
; LDX $01E0
; BEQ $1332
; JMP $F04A
; SEI
; JSR $E31B
; CLD
; LDY #$00
; STY $01
; STY $FF3F
; ROL $00,X
; BRK

