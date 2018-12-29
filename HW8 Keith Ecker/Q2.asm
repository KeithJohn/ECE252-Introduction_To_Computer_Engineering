.ORIG x3000
	LD R1, STRING_1
	LD R2, STRING_2
	LD R3, negONE
	JSR LoadString
	JSR ReverseString

STOP HALT

LoadString
	Repeat_Load	
		LDR R4, R1,#0
		BRz Return_Load
		STR R4, R2, #0
		ADD R1,R1,#1
		ADD R2,R2,#1
		BR Repeat_Load
	Return_Load ret
	
ReverseString
	LD R2, STRING_2
	Repeat_Reverse
		ADD R1,R1,R3	
		LDR R4, R2,#0
		BRz Return_Reverse
		STR R4, R1,#0
		ADD R2, R2, #1
		BR Repeat_Reverse 
	Return_Reverse ret
	
	STRING_1 .FILL x5000
	STRING_2 .FILL x3200
	NULL .FILL x0000
	negONE .FILL xFFFF


.END