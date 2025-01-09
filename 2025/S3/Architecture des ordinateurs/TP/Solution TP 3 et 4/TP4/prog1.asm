;data 
    x dw 50h 
    y dw 6h 
    msg db 'Hello'
    ;tab dw 10 dup(0)   
    ;tab dw 2, 12, 8, 52, 108
;code
    mov ax,x 
    mov bx,y 
    mul bx 
    mov al,msg[0] 
    hlt
