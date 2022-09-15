# Crazy Cavey - Mastertronic - VIC20

Cheats found by Jason Brooks 2022 - www.muckypaws.com

                   _                                                  
                  | |                                                  
 ____  _   _  ____| |  _ _   _ ____  _____ _ _ _  ___  ____ ___  ____  
|    \| | | |/ ___) |_/ ) | | |  _ \(____ | | | |/___)/ ___) _ \|    \ 
| | | | |_| ( (___|  _ (| |_| | |_| / ___ | | | |___ ( (__| |_| | | | |
|_|_|_|____/ \____)_| \_)\__  |  __/\_____|\___/(___(_)____)___/|_|_|_|
                        (____/|_|                                      
                        


Do you want Infinite lives, Just Nine Lives or Infinite Air? 
Then follow these instructions :-

`LOAD""`

Once loaded the first part, amend the following lines, remember to delete line 370.

Delete the cheats you don't want to activate, and type `RUN`


`360 x=673`

`361 ready:ify=-1 then sys(673)`

`362 poke x,y:x=x+1:goto 361`

`370`

`380 data 169,0,162,1,160,255,32,186,255,32,189,255,32,213,255`

`400 rem 9 lives`
`410 data 169,9,141,179,21`

`420 rem infinite lives`
`430 data 169,13,141,137,18`

`440 rem infinite air`
`450 data 169,5,141,90,31`

`460 rem leave the last line`
`470 data 76,8,26,-1`

Type `RUN`

Enjoy exploring all the levels of this brilliant platformer.
