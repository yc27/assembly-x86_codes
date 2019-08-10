.MODEL SMALL
.STACK 100H

.DATA
    A DB ?
    B DB ?

.CODE
    MAIN PROC        
        MOV AX, @DATA
        MOV DS, AX
        
        ;add two numbers resulting below 19
              
        ;take Input              
        MOV AH, 1       
        INT 21H
        MOV A, AL
        SUB A, 48
             
        ;take Input
        MOV AH, 1
        INT 21H
        MOV B, AL 
        SUB B, 48 
                
        MOV AL, A
        ADD AL, B
        MOV AH, 0
        
        AAA             ;AAA = adjust after addition 
        
        ADD AL, 48
        ADD AH, 48
        MOV BX, AX

        ;print new line
        MOV AH,2
        MOV DL, 0AH
        INT 21H       
        MOV DL, 0DH
        INT 21H
                               
        MOV AH, 2
        MOV DL, BH   
        INT 21H
        
        MOV AH, 2
        MOV DL, BL   
        INT 21H 
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN
