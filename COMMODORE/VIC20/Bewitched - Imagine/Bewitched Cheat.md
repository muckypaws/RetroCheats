# Bewitched - Imagine - Commodore VIC20

Cheats Found by Jason Brooks 2022 - www.wonkypix.com

This little gem was hard then, and even harder nearly 40 years later with slower reflexes.

How does string with Nine Lives or Infinite Lives grab your attention?

Well, I have you covered!

Don't want to type it in? The download the **Bewitched Cheat.tap** and load that into your VIC20


`10 rem bewitched - infinite lives`

`20 rem by jason brooks 2022`

`30 a = 544`

`40 read b% : if b% = -1 then end`

`50 poke a,b%: a=a+1: goto 40`

`70 data 169,43,141,252,18,169,2,141`

`80 data 253,18,96`

`90 rem start with 9 lives `

`100 data 169,25,141,12,16`

`110 rem infinite lives`

`120 data 169,13,141,144,27`

`130 rem leave this last line`

`140 data 76,0,17,-1`

## How to use this Cheat.

Follow these instructions exactly.

Type in the program and delete the line with the cheat you don't want.

Want infinite lives? delete line 100
Want 9 Lives? delete line 120

Type 

`RUN`

`NEW`

`LOAD"",1,1`

`SYS544`

`RUN`

Follow the game instructions and when its loaded your cheat will be enabled.