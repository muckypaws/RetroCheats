*=$1200
;
; Preserve Original stack
;

     TSX
     STX     stack     
;
; Set Stack Below Novaloader Code
;
     LDX     #$3f      
     TXS
;
; Now Load Code
;
     LDA     $01       
     LDX     #$01      
     LDY     #$FF      
     JSR     $FFBA     
     LDA     #$00      
     JSR     $FFBD     
     JSR     $FFD5     
;
; Restore original stack
;
     LDX     stack     
     TXS
PatchBigMac
    LDX #$00
    LDY #CheatEnd-CheatCode
PatchLoop
    LDA CheatCode,x
    STA $130,x
    INX
    DEY
    CPY #$00
    BNE PatchLoop
    LDA #$30
    STA $1AC
    LDA #$01
    STA $1AD
    rts


stack byte    00
CheatCode
    LDA #$1D   
    STA $32BA
    LDA #$0D
    STA $32fE
    JMP $800D
CheatEnd