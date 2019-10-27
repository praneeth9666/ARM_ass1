	
    PRESERVE8 
    THUMB 
    AREA    |.text|,CODE,READONLY 
    EXPORT __main 
    ENTRY 
__main    FUNCTION 
    MOV R0,#4		;Initializing the registers with three numbers to compare
    MOV R1,#1 
    MOV R3,#2
    MOV R5,#0x20000000	;Initializing the register with the address where the largest number is stored
loop1 CMP R0,R1		;Comparing the first two numbers			
    BLE loop2		;If a<=b then jump to loop2
    CMP	R3,R0		;Comparing c,a when a>b
    BLE loop4		;if a>=c then jump to loop4
    B stop		;branch to stop loop
loop2 CMP R1,R3		;Compare b,c 
    BLE	loop3 		;if b<=c then jump to loop3
    STR R1,[R5],#0	;if b>c then store b in the given address
    B stop
loop3 STR R3,[R5,#0]	;loop3 and loop 4 are just being used to store c and a respectively
    B stop
loop4 STR R0,[R5],#0
    B stop
stop B stop 
    ENDFUNC 
    END

