.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
	;TAKE INPUT
    MOV AH,1
    INT 21H
    MOV BL,AL   
    
	;PRINT NEW LINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CL,'1'
    
   	MOV AH,2
    TOP:
    	MOV DL,CL
    	INT 21H 
    
    	INC CL 
    	CMP CL,BL
    
    	JG EXIT
    	JMP TOP
    
    
    EXIT:
    	MOV AH,4CH
    	INT 21H

    MAIN ENDP
END MAIN
