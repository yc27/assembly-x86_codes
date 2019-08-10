.MODEL SMALL
.STACK 100H
.DATA
    PVE DW "THIS NUMBER IS POSITIVE$"
    NVE DW "THIS NUMBER IS NEGATIVE$"
    NUM DB 55

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        CMP NUM,'0'
        JGE POS

        MOV AH, 9
        LEA DX, NVE
        INT 21H
        JMP EXIT

        POS:
            MOV AH, 9
            LEA DX, PVE
            INT 21H
    
        EXIT:
            MOV AH,4CH
            INT 21H
    MAIN ENDP
END MAIN
