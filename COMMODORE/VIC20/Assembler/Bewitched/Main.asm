*=$12a1
RealLoaderCode
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
    LDX  #$B0
    LDA  $1DFF,X
    STA  $0101,X
    DEX
    BNE  $12B8
    LDA  #$0A
    STA  $900E
    SEI
    LDA  #$01
    STA  $0315
    LDA  #$02
    STA  $0314
    CLI
    LDA  #$09
    STA  $9000
    LDA  #$19
    STA  $9002
    LDA  #$FE
    STA  $9005
    LDA  #$14
    STA  $9001
    LDA  #$C0
    STA  $9003
    LDA  $FF
    STA  $0100
    LDA  #$7F
    STA  $0328
    STA  $911E
    STA  $911F

    LDA #$19
    STA $100c       ; Nine Lives
    LDA #$0D
    STA $1B90       ; infinite lives
    JMP  $1100



CopyCode
    LDX  #$62
CopyCodeLoop
    LDA  $12A1,X
    STA  $02A1,X
    DEX
    BPL  CopyCodeLoops
    JMP  $02A1