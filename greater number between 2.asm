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
    
        ;PRINT NEW LINE
        MOV AH,2
        MOV DL,0AH
        INT 21H    
        MOV DL,0DH
        INT 21H
        
        PRINTN "ENTER 2ND NUMBER"
        MOV AH,1
        INT 21H
        MOV CH,AL 
        
        ;PRINT NEW LINE
        MOV AH,2
        MOV DL,0AH
        INT 21H    
        MOV DL,0DH
        INT 21H 
    
        PRINTN "GREATER NUMBER IS: "
    
        Start:
            CMP DH,CH
            JG A
            JMP B
            
        A:
            MOV AH,2
            MOV DL,DH
            INT 21H
            JMP EXIT
            
        B:
            MOV AH,2
            MOV DL,CH
            INT 21H    
            JMP EXIT
            
        EXIT:
            MOV AH,4CH
            INT 21H            
    MAIN ENDP
END MAIN
