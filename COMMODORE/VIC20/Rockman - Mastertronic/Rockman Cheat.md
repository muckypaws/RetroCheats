# Infinite Time


POKE $17F7,$0D   	- In first game part loader
POKE $2D7,$0D

before code relocation :-

.C:02c7  EE 6C 02    INC $026C
.C:02ca  D0 30       BNE $02FC
.C:02cc  A9 FA       LDA #$FA





## Infinite Lives

POKE $11F4, $EA

## 9 Lives
POKE $15bd,$0e





Now develop intercept code to load he basic first part and initialise the game code, followed by the second part loader.

