        MOV AX,3
        MOV BX, 5
        CMP AX, BX
        JNA finSi
        MOV AX, 10
finSi:  RET