;Exo4-Q3-Solution 2
data segment 
    ; D�claration des variables
    x dw 4h
    y dw 6h
    z dw 0
data ends
code segment
assume ds:data,cs:code
start:
  MOV AX,data
  MOV DS,AX
  ; D�but du code du programme appelant
  PUSH  x          ; Empile argument 1
  PUSH  y          ; Empile argument 2
  call somme    ; Appel de la proc�dure
  MOV y, AX
  hlt 
 ; D�finition de la proc�dure
 somme proc near
   PUSH BP                ; Sauvegarde BP      
   MOV BP, SP           ; Adresse sommet pile      
   MOV AX, [BP+4]     ; Charge argument 2
   ADD  AX, [BP+6]     ; Charge argument 1
   POP BP                   ; restaure ancien BP
   RET  
 somme endP
code ends
end start

