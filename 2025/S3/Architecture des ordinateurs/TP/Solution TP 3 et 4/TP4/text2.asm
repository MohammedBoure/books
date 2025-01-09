;Exo2
include 'emu8086.inc'
data segment
    ;données 
    ;.....   
data ends
code segment
assume ds:data,cs:code
start:
        MOV AX,data
        MOV DS,AX
        ;code 
        ;...
           call somme
          

    somme: 
    ;....
    ;code de la procedure somme     
code ends
end start
