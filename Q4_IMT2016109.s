    PRESERVE8 
    THUMB 
    AREA    |.text|,CODE,READONLY 
    EXPORT __main 
    ENTRY 
__main    FUNCTION 
   MOV R0,#4
   MOV R1,#1
   MOV R4,#0
   MOV R5,#0x20000000
   CMP R4,R3
   ITE LE		;Writing two ITEs one after the other gives two errors A1619E,A1603E being non consistent adn being unpredictable respectively 
   CMP R0,R1
   ITE GT
   STRLE R4,[R5,#0]
   STRGE R3,[R5,#0]
   B stop
stop    B stop 
        ENDFUNC 
        END
