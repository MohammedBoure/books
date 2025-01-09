;prgm3
include 'emu8086.inc'   
data segment
  x dw 5h
  tab dw 0,2,4,6,8,10,12,14,16,18
data ends
code segment
assume ds:data,cs:code
start: 
     MOV AX,data
     MOV DS,AX
     print 'Hello'
     printn ' World!'
     printn 'Enter a number between 1 and 10: '
     CALL   scan_num  
     ;MOV AX, CX 
     CMP CX,1
     JB lab2 
     CMP CX,10
     JA lab2  
lab0:MOV SI,0
lab1:MOV AX,tab[SI] 
     CALL print_num 
     PRINTN '' 
     ADD SI,2
     LOOP lab1
     JMP lab3    
lab2:print 'Error'
lab3:hlt 
code ends
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_SCAN_NUM
end start
