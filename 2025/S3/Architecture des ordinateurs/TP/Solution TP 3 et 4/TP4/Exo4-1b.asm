 ;EXO4
data segment 
    ;Déclaration des variables
    x dw 4h
    y dw 6h
    z dw 0
data ends
code segment
assume ds:data,cs:code
start:
  MOV AX,data
  MOV DS,AX
  ;Début du code du programme appelant
  MOV AX, x
  MOV BX, y
  call somme; appèle de la procédure
  MOV y, AX
  hlt 
 ;définition de la procédure
 somme proc near
 ADD AX, BX
 RET  
 somme endP;   fin de la procédure
code ends
end start
