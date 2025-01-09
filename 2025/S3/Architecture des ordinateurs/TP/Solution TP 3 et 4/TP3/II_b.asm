        MOV AX,10
        AND AX,AX
        JNe sinon
        MOV AX, 1
        JMP finSi
sinon:  MOV AX,-1
finSi:  RET