*=$1200
;
; Preserve Original stack
;

     TSX
     STX     stack     
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
     LDX     stack     
     TXS
     LDY     #$00      
stackRestore
     LDA     stackData,y
     STA     $100,x    
     iny
     inx
     cpx     #$00      
     bne     stackRestore

     rts
stack byte    00
stackData
