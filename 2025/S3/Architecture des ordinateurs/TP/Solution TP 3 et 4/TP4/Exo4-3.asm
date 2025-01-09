;Exo4-Q3-Solution 1
data segment 
    ; Déclaration des variables
    x dw 4h
    y dw 6h
    z dw 0
data ends
code segment
assume ds:data,cs:code
start:
  MOV AX,data
  MOV DS,AX
  ; Début du code du programme appelant
  PUSH  x          ; Empile argument 1
  PUSH  y          ; Empile argument 2
  call somme    ; Appel de la procédure
  MOV y, AX
  hlt 
 ; Définition de la procédure
 somme proc near
   MOV BP, SP           ; Adresse sommet pile      
   MOV AX, [BP+2]     ; Charge argument 2
   ADD  AX, [BP+4]     ; Charge argument 1   
   RET  
 somme endP 
code ends
end start
