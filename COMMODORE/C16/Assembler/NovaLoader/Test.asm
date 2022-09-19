*=$1200
;
; Load Cassette Header and Load Program
;
loaderCode
     LDA $01
     LDX     #$01
     LDY     #$FF
     JSR     $FFBA
     LDA     #$00
     JSR     $FFBD
     JSR $FFC0
     LDY #$00
loop1
     JSR $FFCF
     STA $1340,y
     inx 
     bne loop1
     
     LDA #$01
     JSR $FFC3
     rts





     LDX     #$FF
     LDY     #$FF
loaderRet
     JMP     $FFD5     ; Load the Main Loader to Memory