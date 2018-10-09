.MODEL SMALL
.STACK 100H

.DATA
    MSG DW "Enter 2 numbers$"
    A DB ?
    B DB ?

.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
                     
        MOV AH, 9
        LEA DX, MSG     ;PRINT MSG
        INT 21H        
        
		;PRINT NEW LINE
        MOV AH,2
        MOV DL, 0AH
        INT 21H
        MOV DL, 0DH
        INT 21H
              
        ;TAKE INPUT
        MOV AH, 1       
        INT 21H
        MOV A, AL
        SUB A, 48
             
        ;TAKE INPUT
		MOV AH, 1       
        INT 21H
        MOV B, AL 
        SUB B, 48 
                
        ;Add A & B
		MOV CH, A
		ADD CH, B
		ADD CH, 48 
        
		;PRINT NEW LINE
        MOV AH,2
        MOV DL, 0AH
        INT 21H   
        MOV DL, 0DH
        INT 21H
             
        ;Print SUM             
        MOV AH, 2
        MOV DL, CH   
        INT 21H
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN
