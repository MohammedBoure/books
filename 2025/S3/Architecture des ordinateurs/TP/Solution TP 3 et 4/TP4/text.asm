;TP-4 exercice 2
include 'emu8086.inc'
data segment
    ;donn�es  
data ends
code segment
assume ds:data,cs:code
start:
        MOV AX,data
        MOV DS,AX
       ;Instructions du programme 
       ;Init
       ;....
       call maProc  
       ;...
         hlt       
       ;Declaration des procedures
code ends
end start
