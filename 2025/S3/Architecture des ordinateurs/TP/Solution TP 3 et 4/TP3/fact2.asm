            ;Fact
            MOV AX,4 
            MOV CX,AX
            AND AX,AX
            JNZ lab
            MOV AX,1
            JMP fin
      lab:  DEC CX
            JZ fin
            MUL CX
            JMP lab
      fin:  RET