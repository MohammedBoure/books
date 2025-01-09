        MOV AX,9
        AND AX,AX
        JNZ sinon
        MOV AX, 1
        JMP finSi
sinon:  MOV AX,-1
finSi:  RET