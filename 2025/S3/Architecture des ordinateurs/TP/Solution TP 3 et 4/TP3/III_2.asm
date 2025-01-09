            MOV CX,0
            MOV AX,10
            MOV BX,0
faire:      SUB AX,1
            ADD CX,1 
            CMP AX,BX
            JA faire
finFaire:   RET