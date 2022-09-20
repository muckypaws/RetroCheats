*=$1200
;
; Preserve Original stack
;

     TSX
     STX     stackRestore+1     
     LDY     #$00      
stackSave
     lda     $100,x    
     sta     StackData,y
     iny
     inx
     CPX     #$00      
     BNE     stackSave 
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
     LDX     stackRestore+1     
     TXS
PatchBigMac
    LDX #$00
    LDY #CheatEnd-CheatCode
PatchLoop
    LDA CheatCode,x
    STA $12d,x
    INX
    DEY
    CPY #$00
    BNE PatchLoop
    LDA #$2d
    STA $1AC
    LDA #$01
    STA $1AD
    rts


CheatCode

     LDX #$00
     LDY #$00
stackRestore
     TXS
     LDA     stackData,y
     STA     $100,x    
     iny
     inx
     cpx     #$00      
     bne     stackRestore
     rts
CheatEnd

StackData = $120