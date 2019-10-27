    PRESERVE8 
    THUMB 
    AREA    |.text|,CODE,READONLY 
    EXPORT __main 
    ENTRY 
__main    FUNCTION 
    MOV R0,#0   	;Initializing With 0,1
    MOV R1,#1 
    MOV R2,#10		;The number of numbers in the resultuing series
    MOV R3,#0		;Cleaning the Reg
    MOV R4,#0		;Counter
    MOV R5,#0x20000000  ;Address where the series is gonna be stored
    ADD R3,R0,R1	;Generating the first element i.e 1
loop1 CMP R4,R2		;Comparing the counter and the required number 
    BLT loop2		;If less than jump to loop2 
    B stop		;Branch to stop loop
loop2 ADD R4,#1 	;Incrementing the counter
    STR R3,[R5],#1	;Storing the number at the choosen address with an offset 1
    MOV R0,R1		;Re-initiating the registers for further calculations
    MOV R1,R3
    ADD R3,R0,R1 	;Generating the next element
    B loop1		Branch to loop1
stop    B stop 
        ENDFUNC 
        END
