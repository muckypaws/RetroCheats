# Frantic - Imagine - VIC20

Cheats found by Jason Brooks 2022 - www.muckypaws.com

                   _                                                  
                  | |                                                  
 ____  _   _  ____| |  _ _   _ ____  _____ _ _ _  ___  ____ ___  ____  
|    \| | | |/ ___) |_/ ) | | |  _ \(____ | | | |/___)/ ___) _ \|    \ 
| | | | |_| ( (___|  _ (| |_| | |_| / ___ | | | |___ ( (__| |_| | | | |
|_|_|_|____/ \____)_| \_)\__  |  __/\_____|\___/(___(_)____)___/|_|_|_|
                        (____/|_|                                      
                        

Given we're flying some fossil fuelled Space Fighter, it seems unlikely... surely we'd be using Star Drives or other tech that barely runs out?

How about an upgraded engine with the power of limitless fuel?  You do? The you're in luck!

Follow these instructions

`LOAD""`

Now modify the following lines


`80 for x=0 to 26:read y:poke256+x,y:next`

`100 data 160,255,32,213,255`

`110 data 169,5,141,49,21`

`120 data 76,0,16`

Et Voila... One upgraded Stardrive at your disposal Admiral!
