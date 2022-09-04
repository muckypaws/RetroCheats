; Start the Initial Program at $1900
*=$1900
     LDX     #$01
     LDY     #$FF
     JSR     $FFBA
     LDA     #$00
     JSR     $FFBD
     LDX     #$FF
     LDY     #$FF
     JSR     $FFD5         ; Load the Main Loader to Memory
     LDA #$04              ; Make loader skip last command
     STA $16e9             
     LDA     #$4c      ; Intercept Next Load Code
     STA     $1700
     lda     #<Intercept1 
     STA     $1701
     lda     #>Intercept1
     STA     $1702
     RTS               ; Run BASIC Program
SetCommand
     LDX     #$00      ; Set Index to Zero
SetCommandLoop
     LDA INITIALLOAD,x
     beq SetCommandExit
     STA $277,x        ; Store in command Buffer
     inx 
     bne SetCommandLoop
SetCommandExit
        STX $C6
     rts
INITIALLOAD text 'RUN'
     byte    13,0
NextCommands
        text "LOAD"        
        byte $22,$22
        text ',1,1'
        byte 13
        text 'SYS528'
        byte 0
;
; Start of the intercept code for the game.
Intercept1
        LDA #<NextCommands
        STA SetCommandLoop+1
        LDA #>NextCommands
        STA SetCommandLoop+2
        JSR SetCommand                  ; Set up the new commands
        LDX #$00
InterceptRelocateLoop 
        LDA pokeCode,x
        BEQ InterceptCodeEnd
        STA $210,x
        inx
        BNE InterceptRelocateLoop
InterceptCodeEnd
        RTS
pokeCode
        LDA #$52
        STA $277
        LDA #$55
        STA $278
        LDA #$4e
        STA $279
        LDA #$0D
        STA $27A
        LDA #$04
        STA $C6
        
        LDA #$0D
        STA $2D7                                ; Infinite Time
        LDA #$EA
        STA $11F4                               ; Infinite Lives
        LDA #$0e
        STA $15BD                               ; 9 Lives
        RTS                                             ; Return to BASIC
        byte 00
        
        