INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX, 26
        MOV AH, 2 
        MOV DL, 'A'
    
        L1:
            INT 21H
            INC DL
            LOOP L1
    
        MOV AH,4CH
        INT 21H  
    MAIN ENDP
END MAIN     
