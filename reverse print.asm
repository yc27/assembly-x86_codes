.MODEL SMALL
.STACK 100H
.DATA
    S_LINE DB "BANGLADESH"
    S_CHAR DW 10
.CODE
    MAIN PROC 
        MOV AX,@DATA
        MOV DS,AX
    
        MOV CX, S_CHAR
        MOV BX, OFFSET S_LINE
    
        LEVEL1:
            PUSH [BX]	
            INC BX
            LOOP LEVEL1
            
        MOV CX, S_CHAR
        MOV AH, 2
        LEVEL2:
            POP DL
            INT 21H
            LOOP LEVEL2
        
        MOV AH,2
        MOV DL,10
        INT 21H   
        MOV DL,13
        INT 21H

        MOV AH,4CH
        INT 21H    
    MAIN ENDP
END MAIN
