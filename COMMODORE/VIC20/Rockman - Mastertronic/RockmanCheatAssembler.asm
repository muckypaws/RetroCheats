; Assembler File for the Cheat
; Jason Brooks 4th September 2022
;
; For use in CBM Program IDE
; Start the Initial Program at $1900
*=$1900
     JSR     loaderCode; Load First File
     LDA     #$EA
     STA     loaderRet
     LDA     #$04      ; Make loader skip last command
     STA     $16e9
     LDA     #$4c      ; Intercept Next Load Code
     STA     $1700
     lda     #<Intercept1
     STA     $1701
     lda     #>Intercept1
     STA     $1702
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
     JSR     $FFD5     ; Load the Main Loader to Memory
loaderRet
     RTS
; Infinite Time
     LDA     #$0D
     STA     $2C7      ; Infinite Time
     LDA     #$EA
     STA     $11F4     ; Infinite Lives
     LDA     #$0e
     STA     $15BD     ; 9 Lives
     JMP     $1400