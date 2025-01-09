            include 'emu8086.inc'
            MOV AX,-9
            MOV BX,-8
            CMP AX,BX
            JA et1
            MOV AX,1 
            PRINTN 'Hello World!' 
            PRINTN AX
       et1: RET