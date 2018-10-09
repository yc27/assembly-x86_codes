.MODEL SMALL
.STACK 100H
.DATA
  
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DX,AX 
    
    MOV CX,4
    LEVEL1:
    	MOV BX,CX
   
    	LEVEL2:
    		MOV AH,2
    		MOV DL,'*'
    		INT 21H
    		LOOP LEVEL2
    
    	MOV AH,2
    	MOV DL,0AH
    	INT 21H        
    	MOV DL,0DH
    	INT 21H
    
    	MOV CX,BX
    	LOOP LEVEL1
    
   
    MOV AH,4CH
    INT 21H  
    
 MAIN ENDP
END MAIN
