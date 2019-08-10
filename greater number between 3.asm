INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 

.CODE
    MAIN PROC
        PRINTN "ENTER 1ST NUMBER"
        MOV AH,1
        INT 21H
        MOV DH,AL
    
        ;print new line
        MOV AH,2
        MOV DL,0AH
        INT 21H    
        MOV DL,0DH
        INT 21H
    
        PRINTN "ENTER 2ND NUMBER"
        MOV AH,1
        INT 21H
        MOV CH,AL 
    
        ;print new line
        MOV AH,2
        MOV DL,0AH
        INT 21H    
        MOV DL,0DH
        INT 21H
    
        PRINTN "ENTER 3RD NUMBER"
        MOV AH,1
        INT 21H
        MOV BH,AL
        
        ;print new line
        MOV AH,2
        MOV DL,0AH
        INT 21H    
        MOV DL,0DH
        INT 21H
    
        PRINTN "GREATER NUMBER IS: "
    
        START:
            CMP DH,CH
            JGE A1          ;if DH greater or equal to CH, jump to A1
            JMP B1          ;else jump to B1
    
        A1:
            CMP DH,BH
            JG A2           ;if DH greater from BH, jump to A2
            JMP C           ;else jump to C
   
        A2:
            MOV AH,2
            MOV DL,DH       ;print DH
            INT 21H
            JMP EXIT
    
        B1:
            CMP CH,BH
            JG B2           ;if CH greater from BH, jump to B2
            JMP C           ;else jump to C
   
        B2:
            MOV AH,2
            MOV DL,CH       ;print CH
            INT 21H
            JMP EXIT
    
        C:
            MOV AH,2
            MOV DL,BH       ;print BH
            INT 21H
            JMP EXIT  
    
        EXIT:
            MOV AH,4CH
            INT 21H    
    MAIN ENDP
END MAIN        
