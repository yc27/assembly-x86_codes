INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA           
    S_LINE DB "bangladesh$"
    S_CHAR DW 10

.CODE
	MAIN PROC 
	    MOV AX,@DATA
	    MOV DS,AX
    
	    MOV CX, S_CHAR
	    MOV BX, OFFSET S_LINE
    
	    MOV AH, 2
	    LEVEL1:
	        MOV DL, [BX]
			SUB DL, 32
			INT 21H
	
	        INC BX
	        LOOP LEVEL1
        
	    MOV AH,2
	    MOV DL,10
	    INT 21H   
	    MOV DL,13
	    INT 21H

	    MOV AH,4CH
	    INT 21H  
    
	MAIN ENDP
END MAIN     
