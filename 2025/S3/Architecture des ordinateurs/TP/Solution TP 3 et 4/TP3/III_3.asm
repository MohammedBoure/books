            MOV BX,0
pourInit:   MOV AX,0 
pourTest:   CMP AX,10
            JA  finPour
            ;<instruction>
            ADD BX,2
            ADD AX,1
            JMP pourTest 
finPour:   RET