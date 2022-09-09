# Arcadia - Imagine - VIC20

## Infinite Lives Cheat by Jason Brooks 2022

You want infinite lives on possibly one of Imagines toughest Shoot-em ups on the VIC20?

Then you're in luck!

Follow these instructions.

Insert a fully rewound cassette (or TAP File) and type

`LOAD ""`

When the first part has loaded, change and add the following lines :-



`80 for x=0 to 26:read y:poke256+x,y:next`

`100 data 160,255,32,213,255`

`110 data 169,5,141,181,16,76,3,16`

Leaving all other lines of the original loader intact.

Type

`RUN`

The game will load and infinite lives are yours for the taking!
