        MOV AX,12
        MOV Bx,12
        CMP AX,BX  
        Jz et1
        MOV AX, 0
        JMP et2
 et1:   Mov Ax, 1 
 et2:   HLT