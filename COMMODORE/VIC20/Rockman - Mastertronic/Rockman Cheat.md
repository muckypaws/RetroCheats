# Scratch note pad 


## Infinite Time


POKE $17F7,$0D   	- In first game part loader
POKE $2C7,$0D

After code relocation :-

.C:02c7  EE 6C 02    INC $026C
.C:02ca  D0 30       BNE $02FC
.C:02cc  A9 FA       LDA #$FA





## Infinite Lives

POKE $11F4, $EA

## 9 Lives
POKE $15bd,$0e





Now develop intercept code to load he basic first part and initialise the game code, followed by the second part loader.



Notes: 

1st part BASIC loads at $1000 - $18dc

SYS calls to $16A8

.C:16a8  A9 93       LDA #$93
.C:16aa  20 D2 FF    JSR $FFD2
.C:16ad  A9 08       LDA #$08
.C:16af  20 D2 FF    JSR $FFD2
.C:16b2  A2 00       LDX #$00
.C:16b4  A9 03       LDA #$03
.C:16b6  9D 00 96    STA $9600,X
.C:16b9  9D AF 96    STA $96AF,X
.C:16bc  CA          DEX
.C:16bd  D0 F7       BNE $16B6
.C:16bf  20 06 17    JSR $1706
.C:16c2  A9 6D       LDA #$6D
.C:16c4  8D 28 03    STA $0328
.C:16c7  A2 12       LDX #$12
.C:16c9  8E 01 90    STX $9001
.C:16cc  A0 1F       LDY #$1F
.C:16ce  8C 03 90    STY $9003
.C:16d1  A9 FE       LDA #$FE
.C:16d3  8D 05 90    STA $9005
.C:16d6  A2 3B       LDX #$3B
.C:16d8  8E 0F 90    STX $900F
.C:16db  A9 03       LDA #$03
.C:16dd  8D 86 02    STA $0286
.C:16e0  A2 00       LDX #$00
.C:16e2  86 D3       STX $D3
.C:16e4  A0 09       LDY #$09
.C:16e6  84 D6       STY $D6

## This section injects commands to command line buffer to load next section

.C:16e8  A9 05       LDA #$05
.C:16ea  85 C6       STA $C6			<-- Five Entries to the Key Buffer 
.C:16ec  A2 4E       LDX #$4E
.C:16ee  8E 77 02    STX $0277			<-- N
.C:16f1  A0 45       LDY #$45
.C:16f3  8C 78 02    STY $0278			<-- E
.C:16f6  A9 57       LDA #$57
.C:16f8  8D 79 02    STA $0279			<-- W
.C:16fb  A2 0D       LDX #$0D
.C:16fd  8E 7A 02    STX $027A			<-- Return
.C:1700  A0 83       LDY #$83			<-- Shift + RUN/STOP
.C:1702  8C 7B 02    STY $027B
.C:1705  60          RTS




	 
	
Final Code - Still needs optimising there has to be a better way of achieving this.
	
10 rem rockman - mastertronic
20 rem jason brooks 2022
30 n=0
40 read a% : if a%=-1 then sys6400 
50 poke 6400+n,a%:n=n+1:goto 40
60 rem cheat codes
70 data 32,66,25,169,234,141,85,25
80 data 169,4,141,233,22,169,76,141
90 data 0,23,169,49,141,1,23,169
100 data 25,141,2,23,162,0,189,44
110 data 25,240,6,157,119,2,232,208
120 data 245,134,198,96,82,85,78,13
130 data 0,162,0,189,66,25,157,16
140 data 2,232,138,201,40,208,244,76
150 data 16,2,162,1,160,255,32,186
160 data 255,169,0,32,189,255,162,255
170 data 160,255,32,213,255,96
180 rem infinite time
190 data 169,13,141,199,2
200 rem infinite lives 
210 data 169,234,141,244,17
220 rem start with nine lives
230 data 169,14,141,189,21
240 rem leave the lines below
250 data 76,0,20,-1



	