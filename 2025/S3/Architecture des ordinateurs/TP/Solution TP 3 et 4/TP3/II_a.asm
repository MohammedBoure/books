        MOV AX,3
        MOV BX, 5
        CMP AX, BX
        JBE sinon
        MOV AX, 10
        JMP finSi
sinon:  MOV AX,5
finSi:  RET