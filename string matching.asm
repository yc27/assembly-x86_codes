INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA           
    S_LINE DB "BANGLADESH$"
    S_CHAR DW 10

.CODE
    MAIN PROC 
        MOV AX,@DATA
        MOV DS,AX
    
        MOV CX, S_CHAR
        MOV BX, OFFSET S_LINE
    
        LEVEL1: 
            MOV AH, 1
            INT 21H         ;take input
            CMP AL, [BX]    ;compare with S_LINE
            JNE LEVEL2      ;if not matched go to LEVEL2
            INC BX          ;else increase counter
            LOOP LEVEL1
        
        MOV AH,2
        MOV DL,10
        INT 21H   
        MOV DL,13
        INT 21H

        PRINT "MATCHED"
        JMP EXIT
    
        LEVEL2:
            PRINTN "NOT MATCHED"
        
        EXIT:
            MOV AH,4CH
            INT 21H    
    MAIN ENDP
END MAIN     
