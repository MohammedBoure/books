;Exo5-Q1 -  Fibo
data segment 
    x dw 7
data ends
code segment
assume ds:data,cs:code
start:
         MOV AX,data
         MOV DS,AX
         CMP x,0
         JL fin 
         PUSH  x          
         call fibo    
  fin: hlt 
  fibo proc near
              MOV BP, SP           
               MOV DX, [BP+2]     
               MOV AX,1
               MOV BX,1 
               AND DX,DX 
               JZ finFibo
 boucle:  SUB DX,1
               JZ  finFibo 
               MOV CX,AX
               ADD AX,BX
               MOV BX,CX 
               JMP boucle
 finFibo:  RET  
 fibo endP  
code ends
end start
