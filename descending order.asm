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
        
        MOV AH,2
        LEVEL:
            MOV DL,BL
            INT 21H
        
            DEC BL   
        
            CMP BL,'0'
            JE EXIT
            JMP LEVEL 
        
        EXIT:
            MOV AH,4CH
            INT 21H
    MAIN ENDP
END MAIN
