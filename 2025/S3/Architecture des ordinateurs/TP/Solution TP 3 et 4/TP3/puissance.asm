            MOV AX,10 
            MOV CX,3
            MOV BX,AX
            AND CX,CX
            JNZ lab
            MOV AX,1
            JMP fin
      lab:  DEC CX
            JZ fin  
            MUL BX
            JMP lab
      fin:  RET