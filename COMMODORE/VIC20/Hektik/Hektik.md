# Hektic - Imagine - VIC20

Cheats found by Jason Brooks 2022 - www.muckypaws.com

                   _                                                  
                  | |                                                  
 ____  _   _  ____| |  _ _   _ ____  _____ _ _ _  ___  ____ ___  ____  
|    \| | | |/ ___) |_/ ) | | |  _ \(____ | | | |/___)/ ___) _ \|    \ 
| | | | |_| ( (___|  _ (| |_| | |_| / ___ | | | |___ ( (__| |_| | | | |
|_|_|_|____/ \____)_| \_)\__  |  __/\_____|\___/(___(_)____)___/|_|_|_|
                        (____/|_|                                      
                        

This was an interesting game code to find the Cheats.  Follow these instructions exactly.

1) Load the Initial Game Loader and Delete Line 101


`LOAD`

`101`

`RUN`

2) Now Load the second part of the game's loader and change line 3 as shown.

`LOAD""`

`3 poke45,16:poke46,18:clr:end`

`RUN`

Press **F7** to exit and continue the load process.

`LOAD"",1,1`

`POKE 12716,127  - Infinite Lives`

`POKE 11800,96	 - Infinite Time`

`SYS15465`

And there you have it, Infinite Lives and/or Infinite Time!
