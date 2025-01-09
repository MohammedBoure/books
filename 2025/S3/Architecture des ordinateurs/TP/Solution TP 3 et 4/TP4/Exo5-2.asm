;Exo5-Q1 -  Fibo
data segment 
    x dw 4
data ends
code segment
assume ds:data,cs:code
start:
         MOV AX,data
         MOV DS,AX
         CMP x,-1
         JL fin 
         PUSH  x          
         call fact    
  fin: hlt 
  fact proc near
             MOV BP, SP           
             MOV AX, [BP+2]     
             AND AX,AX
             JNZ lab1
             MOV AX,1
             JMP finFact
  Lab1:  MOV BX,AX
  lab2:   DEC BX
             JZ fin
             MUL BX
             JMP lab2
  finFact:   RET
  RET  
 fact endP  
code ends
end start
