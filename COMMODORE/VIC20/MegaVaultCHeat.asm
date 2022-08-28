;
; Custom Loader for MegaVault - Jason Brooks 2022
;    
    A $210
.start    
	JSR loader		; Load the initial game code (BASIC Stub)
	LDA #$60		; Set A to the RTS OP-Code
	STA $1136		; POKE $1136,$60
	JSR $1100		; Call the Game Loader initialisation Code 
	JSR loader		; Splash Screen Displayed, Load the next part
	LDA #$60		; Set A to the RTS Op-Code
	STA $1040		; POKE $1040,$60 - Return Control To Me!
	JSR $1010		; Call the Games Second initialisation routines
	JSR loader		; Load the final part of the Game Code.
	LDA #$05		; Set A = Op Code ORA $
	STA $123		; POKE $123,$05
	STA $118F		; POKE $118F,$05
	JMP $361		; Start the Game
;
; Reusable Loader Stub to load the next program from cassette
;
.loader
	LDX #$01		; Set LBS to 1 - Cassette
	LDY #$FF
	JSR $FFBA		; initialise the LBS	
	LDA #$00		; Set length of Program Filename
	JSR $FFBD		; Set Filename length
	LDX #$FF
	LDY #$FF
	JMP $FFD5		; Load the program at the address specified in the header
	