; Hello from VIC 20
; For an UNEXPANDED VIC 20

*=$1400 

start   LDX #$0
cycle   LDA hworld,X
        CMP #0
        BEQ exit
        STA $1E00,X
        INX
        JMP cycle
exit    RTS

hworld  text 'HELLO WORLD!'
        byte 0
