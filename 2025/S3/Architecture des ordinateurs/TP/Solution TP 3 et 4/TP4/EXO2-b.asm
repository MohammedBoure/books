;Exo2
include 'emu8086.inc'
data segment
    ;données 
    ;msg  db 'Hello world' 
    ;tab2 dw 5 dup(1)   
data ends
code segment
assume ds:data,cs:code
start:
        MOV AX,data
        MOV DS,AX
        ;code
        MOV SI,00H 
        MOV BX,00h
        MOV CX,30
etq2:   CMP [SI],0
        JNZ etq1
        INC BX
etq1:   INC SI 
        LOOP etq2
        MOV [200h], BX    
        hlt     
code ends
end start
