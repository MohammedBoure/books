;prgm3
include 'emu8086.inc'
data segment
msg  db 'Hello world' 
tab2 dw 5 dup(1)
data ends
code segment
assume ds:data,cs:code
start:
        MOV AX,data
        MOV DS,AX
        MOV SI,00H 
        MOV BX,00h
        MOV CX,30
etq2:   CMP [SI],0
        JNZ etq1
        INC BX
etq1:   MOV AH, 0
        MOV AL,[SI]
        CALL print_num
        PRINTN ''
        INC SI 
        DEC CX
        JNZ etq2
        MOV [200], BX
        hlt
code ends
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM
end start
