;prgm2
data segment
  x dw 5h
  y dw 6h
  msg  db 'Hello'
  tab1 dw 2, 4, 6, 8, 10
  tab2 dw 5 dup(0)
data ends
code segment
assume ds:data,cs:code
start:
     MOV AX,data
     MOV DS,AX
     MOV AX,0
     MOV CX,5 ;
     MOV SI,0 ;
et2: AND CX,CX
     JZ et1
     ADD AX,tab1[SI]
     ADD SI,2
     DEC CX
     JMP et2
et1: hlt
code ends
end start