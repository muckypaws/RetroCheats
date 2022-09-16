
10 rem rip - mastertronic
20 rem jason brooks 2022
25 print chr$(147),chr$(19)
26 print "insert rip cassette"
30 n=0
40 read a% : if a%=-1 then sys6400 
50 poke 6400+n,a%:n=n+1:goto 40
60 rem cheat codes
70 data 32,61,25,169,32,141,77,25
80 data 169,76,141,132,22,169,44,141
90 data 133,22,169,25,141,134,22,162
100 data 0,189,39,25,240,6,157,119
110 data 2,232,208,245,134,198,96,82
120 data 85,78,13,0,162,0,189,61
130 data 25,157,16,2,232,138,201,40
140 data 208,244,76,16,2,162,1,160
150 data 255,32,186,255,169,0,32,189
160 data 255,162,255,160,255,76,213,255

180 rem infinite lives
190 data 169,234,141,228,18

200 rem start with nine lives
210 data 169,11,141,244,16

220 rem leave this last line
230 data 76,0,20,-1
