     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
        MOV r3, #0x20000000 
		MOV r4, #0x20000000
		MOV r1, #0x10
		MOV r2, #0xA
		
loop 	CMP r2,#0
        STR r1,[r3]
        ADD r3,#0x4
		EOR r1,r1,r2
		SUBGT r2,r2,#1
		BGT loop
		
		MOV r2,#0x4
loop1	CMP r2,#0
        MOV r1,#0		
        STR r1,[r4]
        ADD r4,#0x4
		SUBGT r2,r2,#1
		BGT loop1
			  
		MOV r3, #0x20000000
		MOV r2,#0x4
loop2 	CMP r2,#0
		EOR r1,r1,r2
        STR r1,[r3]
        ADD r3,#0x4 
		SUBGT r2,r2,#1
		BGT loop2
			  
		MOV r2,#0x6
loop3	CMP r2,#0
        MOV r1,#0		
        STR r1,[r4]
        ADD r4,#0x4
		SUBGT r2,r2,#1
		BGT loop3
			  
		MOV r4,#0x20000000
		MOV r2,#0x4
loop4	CMP r2,#0
        MOV r1,#0		
        STR r1,[r4]
        ADD r4,#0x4
		SUBGT r2,r2,#1
		BGT loop4		
       
stop B stop ; stop program
     ENDFUNC
     END





