    PRESERVE8 
    THUMB 
    AREA    |.text|,CODE,READONLY 
    EXPORT __main 
    ENTRY 
__main    FUNCTION 
    	MOV R0,#4		;Initializing the registers with two numbers to compute the GCD
	MOV R1,#1	
	MOV R5,#0x20000000	;Initializing the register with the address 
loop1	CMP R0,R1		;COmparing a,b
	BEQ stop		;If a=b the stop loop
	ITE gt			;If a>b the SUBGT else SUBLE
	SUBGT R0,R0,R1
	SUBLE R1,R1,R0
	B loop1			;branch to loop1
stop    STR R0,[R5,#0]		;Storingthe HCF at the given register
	B stop 
        ENDFUNC 
        END
