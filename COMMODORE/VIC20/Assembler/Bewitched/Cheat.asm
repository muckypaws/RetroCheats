*=$12fb
    LDA #$19
    STA $100C
    LDA #$0D
    STA $1B90
    JMP  $1100
    LDX  #$62
    LDA  $12A1,X
    STA  $02A1,X
    DEX
    BPL  $130a
    JMP  $02A1