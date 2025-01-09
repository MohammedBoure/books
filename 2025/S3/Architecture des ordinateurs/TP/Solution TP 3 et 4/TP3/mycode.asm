;prgm1
data segment
x dw 5h
y dw 6h
z dw 0
data ends
code segment
assume ds:data,cs:code
start:
  MOV AX,data
  MOV DS,AX
  MOV AX,x
  MOV BX,y
  ADD AX,BX
  MOV z,AX
  MOV BX, z
  ;hlt
  BRK
code ends
end start
