 ;EXO4
data segment 
    ;D�claration des variables
    x dw 4h
    y dw 6h
    z dw 0
data ends
code segment
assume ds:data,cs:code
start:
  MOV AX,data
  MOV DS,AX
  ;D�but du code du programme appelant
  MOV AX, x
  MOV BX, y
  call somme; app�le de la proc�dure
  MOV y, AX
  hlt 
 ;d�finition de la proc�dure
 somme proc near
 ADD AX, BX
 RET  
 somme endP;   fin de la proc�dure
code ends
end start
