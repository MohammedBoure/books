include 'emu8086.inc'
data segment
    ;Tab dw 12, 46, 2, 11, 9, 22, 3, 7, 1, 31
    ;nbr dw 10 ; nombre des éléements du tableau Tab
data ends
code segment
assume ds:data,cs:code
start:
        MOV AX,data
        MOV DS,AX
        ; Programme
        ; Un exemple de tableau débutant à l'adresse 200h 
        MOV [200h], 12 
        MOV [202h], 46
        MOV [204h], 2
        MOV [206h], 11
        MOV [208h], 9
        ; Appel de la procédure de Tri                   
        PUSH 200h              
        PUSH 5      
        CALL triTab 
        ; Appel de la procédure d'affichage                  
        PUSH 200h              
        PUSH 5      
        CALL afficherTab        
        hlt                                         
        ; Défi,ition de la procédure de tri
triTab proc near  ;début de la procédure
        MOV BP, SP
        MOV SI, [BP+4] ; 
        MOV CX, [BP+2] ;  
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
afficherTab proc near  ;début de la procédure
        MOV BP, SP
        MOV SI, [BP+4] ; Lire l'adresse du tableau
        MOV CX, [BP+2] ; Lire le nombre des éléements du tableau
   lab: MOV AX, [SI] 
        CALL print_num 
        PRINTN '' 
        ADD SI,2
        LOOP lab
 	    RET  
 afficherTab endP   ;fin de la procédure
code ends
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM
end start
