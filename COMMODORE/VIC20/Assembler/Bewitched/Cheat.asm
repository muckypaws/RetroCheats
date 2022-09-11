*=$220
; Load the BASIC Program
    LDA  #$05
    LDX  #$01
    LDY  #$FF
    JSR  $FFBA
    LDA  #$00
    TAX
    TAY
    JSR  $FFBD
    LDA  #$00
    JSR  $FFD5
Inject
    LDA #<Cheat
    STA $12fc
    LDA #>Cheat
    STA $12fd
    RTS
;    JMP $21A        ; Execute the original loader
Cheat
    LDA #$19
    STA $100C
    LDA #$0D
    STA $1B90
    JMP  $1100
