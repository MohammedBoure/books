;Exo4-Q1 et Q2-Solution 2
;EXO4
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
  ;MOV BP, SP
  PUSH 1
  PUSH 2 
  PUSH 3
  PUSH 4
  MOV BP, SP
  MOV AX, [BP+6]
  ;MOV BX,[BP+2]
  ;MOV BP, SP  
  ;MOV CX,[BP] 
  hlt 
code ends
end start
