include 'emu8086.inc'
data segment
    Tab dw 12, 46, 2, 11, 9, 22, 3, 7, 1, 31
    nbr dw 10 ; nombre des éléements du tableau Tab
data ends
code segment
assume ds:data,cs:code
start:
        MOV AX,data
        MOV DS,AX 
        ; Début du programme
        ; Afficher le tableau  
        ; Trier le tableau
        LEA AX, Tab  ; Lire l'adresse du tableau                     
        PUSH AX      ; Empile l'adresse du tableau         
        PUSH nbr     ; Empile le nombre des élémnts du tableau 
        CALL triTab  ; appel de la procédure de tri       
        hlt                                         
        ; Défi,ition de la procédure de tri
triTab proc near  ;début de la procédure
        MOV BP, SP
        MOV SI, [BP+4] ; Lire l'adresse du tableau
        MOV CX, [BP+2] ; Lire le nombre des éléements du tableau 
  lab1: MOV AX, [SI] 
        MOV BX, SI 
        MOV DX, CX
  lab2: DEC DX
        CMP DX,0
        JE lab3 
        ADD BX, 2
        CMP AX, [BX]
        JLE lab2
        XCHG AX, [BX]
        MOV [SI], AX
        JMP lab2
  lab3: ADD SI,2
        LOOP lab1
 	    RET  
triTab endP   ;fin de la procédure    
code ends
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM
end start
