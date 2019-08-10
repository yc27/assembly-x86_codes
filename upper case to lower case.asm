.MODEL SMALL
.STACK 100H
.DATA
    A DB ?
    B DB ?
    C DB ?
    D DB ?
    E DB ?
  
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX

        MOV AH,1
        INT 21H
        MOV A,AL 
        ADD A,32        ;move to lower case
        
        MOV AH,1
        INT 21H
        MOV B,AL 
        ADD B,32        ;move to lower case
        
        MOV AH,1
        INT 21H
        MOV C,AL 
        ADD C,32        ;move to lower case
        
        MOV AH,1
        INT 21H
        MOV D,AL 
        ADD D,32        ;move to lower case
        
        MOV AH,1
        INT 21H
        MOV E,AL 
        ADD E,32        ;move to lower case
        
        ;print new line
        MOV AH,2
        MOV DL,0AH
        INT 21H        
        MOV DL,0DH
        INT 21H 
        
        MOV AH,2
        MOV DL,A
        INT 21H
        
        MOV AH,2
        MOV DL,B
        INT 21H
        
        MOV AH,2
        MOV DL,C
        INT 21H
        
        MOV AH,2
        MOV DL,D
        INT 21H
        
        MOV AH,2
        MOV DL,E
        INT 21H
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
END MAIN
