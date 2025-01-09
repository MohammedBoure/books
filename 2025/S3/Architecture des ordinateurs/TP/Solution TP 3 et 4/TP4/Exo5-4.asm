; de déterminer le maximum dans un tableau d'entiers
data segment
    Tab dw 12, 46, 2, 11, 9, 22, 83, 7, 1, 31
    nbr dw 10 ; nombre des éléements du tableau Tab
data ends
code segment
assume ds:data,cs:code
start:
        MOV AX,data
        MOV DS,AX 
        LEA AX, Tab                       
        PUSH AX             
        PUSH nbr     
        CALL maxTab         
        hlt                                         
maxTab  proc near  
        MOV BP, SP
        MOV SI, [BP+4] 
        MOV CX, [BP+2]  
        MOV AX, [SI]
 lab1:  DEC CX
        CMP CX,0
        JE lab2
        ADD SI,2 
        CMP AX, [SI]
        JGE lab1
        MOV AX, [SI]
        JMP lab1
  lab2: RET  
maxTab endP   ;fin de la procédure    
code ends
end start
