;
; Jason Brooks 2022 - www.muckypaws.com
;

; Start the Initial Program at $1900
*=$1900
     JSR     loaderCode; Load First File
     LDA     #$20
     STA     loaderRet
     LDA     #$4c      ; Intercept Next Load Code
     STA     $1684
     lda     #<Intercept1
     STA     $1685
     lda     #>Intercept1
     STA     $1686
SetCommand
     LDX     #$00      ; Set Index to Zero
SetCommandLoop
     LDA     INITIALLOAD,x
     beq     SetCommandExit
     STA     $277,x    ; Store in command Buffer
     inx
     bne     SetCommandLoop
SetCommandExit
     STX     $C6
     rts               ; Now Run the Initial Code
INITIALLOAD text    "run"
     byte    13,0
;
; Start of the intercept code for the game.
Intercept1
     LDX     #$00
InterceptRelocateLoop
     LDA     pokeCode,x
     STA     $210,x
     inx
     TXA
     CMP     #40
     BNE     InterceptRelocateLoop
InterceptCodeEnd
     JMP     $210
pokeCode
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
; Infinite Time
     LDA     #$EA
     STA     $12e4     ; Infinite Lives
     LDA     #$0b
     STA     $10f4     ; 9 Lives
     JMP     $1400     ; Game Execution Address
     
     