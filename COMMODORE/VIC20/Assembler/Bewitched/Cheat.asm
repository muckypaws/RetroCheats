*=$220
; Load the BASIC Program
Inject
    LDA #<Cheat
    STA $2fc
    LDA #>Cheat
    STA $2fd
    JMP $21A        ; Execute the original loader
Cheat
    LDA #$19
    STA $100C
    LDA #$0D
    STA $1B90
    JMP  $1100
