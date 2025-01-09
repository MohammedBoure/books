            MOV AX,4
            MOV BX,AX 
            AND AX,AX
            JNZ lab
            MOV AX,1
            JMP fin
      lab:  SUB BX,1 
            JZ fin
            MUL BX
            JMP lab
      fin:  RET