*=$100
; Phantom Attack Cheat 
; Jason Brooks September 2022

    JSR loaderCode      ; Load Initial Loader Code
    JSR $1400           ; Set up graphics etc.
    JSR loaderCode      ; Load Next Part
    LDA #$EA
    STA $19d7           ; Cheat Code
    JMP $1400

loaderCode
     LDX     #$01
     LDY     #$FF
     JSR     $FFBA
     LDA     #$00
     JSR     $FFBD
     LDX     #$FF
     LDY     #$FF
loaderRet
     JMP     $FFD5     ; Load the Main Loader to Memory