    PRESERVE8 
    THUMB 
    AREA    |.text|,CODE,READONLY 
    EXPORT __main 
    ENTRY 
__main    FUNCTION 
    MOV R0,#4		;Initializing the registers with two numbers
    MOV R1,#1
    MOV R4,#0
    MOV R5,#0x20000000	;Initializing the register with the address where the value is stored
    AND R3,R0,R1 	;Bitwise AND with 1 (Even gives 0,Odd gives 1)
    STR R3,[R5],#1	;Storing the value 0 or 1 in the given address
    B stop
stop    B stop 
        ENDFUNC 
        END
