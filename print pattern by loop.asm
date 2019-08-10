INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
    A DB ?
    B DB ?
    C DB ?
  
.CODE
    MAIN PROC 
        MOV AX,@DATA
        MOV DS,AX 

        PRINTN "Enter 3 initials : "

        MOV AH,1
        INT 21H
        MOV A,AL 
        
        MOV AH,1
        INT 21H
        MOV B,AL
        
        MOV AH,1
        INT 21H
        MOV C,AL

        ;print new line
        MOV AH,2
        MOV DL,10
        INT 21H    
        MOV DL,13
        INT 21H    
        
        MOV AH, 2
        MOV CX,4
        LEVEL0:
            MOV BX, CX
            MOV DL, '*'
            MOV CX, 11
            LEVEL01:
                INT 21H
                LOOP LEVEL0

            ;print new line
            MOV AH,2
            MOV DL,10
            INT 21H    
            MOV DL,13
            INT 21H 
        
            MOV CX, BX
            LOOP LEVEL0     
        
        PRINT "****"
        ;print A
        MOV AH,2
        MOV DL,A
        INT 21H 
        
        ;print B
        MOV AH,2
        MOV DL,B
        INT 21H 
        
        ;print C
        MOV AH,2
        MOV DL,C
        INT 21H
        PRINT "****"

        ;print new line
        MOV AH,2
        MOV DL,10
        INT 21H    
        MOV DL,13
        INT 21H

        MOV AH, 2
        MOV CX,4
        LEVEL1:
            MOV BX, CX
            MOV DL, '*'
            MOV CX, 11
            LEVEL11:
                INT 21H
                LOOP LEVEL1

            ;print new line
            MOV AH,2
            MOV DL,10
            INT 21H    
            MOV DL,13
            INT 21H 
        
            MOV CX, BX
            LOOP LEVEL1
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
END MAIN
    
