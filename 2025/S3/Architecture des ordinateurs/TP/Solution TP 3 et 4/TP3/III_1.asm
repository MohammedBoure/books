            MOV CX,0
            MOV AX,10
            MOV BX,0
tq:         CMP AX,BX
            JBE finTq
            SUB AX,1
            ADD CX,1
            JMP tq 
finTq:  RET