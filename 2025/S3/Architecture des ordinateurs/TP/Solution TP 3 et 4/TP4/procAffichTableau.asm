; Un programme qui permet d'afficher un tableau
include 'emu8086.inc'
data segment
    Tab dw 11, 4, 6, 8, 10, 12, 14
    nbr dw 7 ; nombre des éléments du tableau Tab
data ends
code segment
assume ds:data,cs:code
start:
        MOV AX,data
        MOV DS,AX 
        ; Début du programme
        LEA AX, Tab      ; Lire l'adresse du tableau                 
        PUSH AX           ; Empile l'adresse du tableau 
        PUSH nbr           ; Empile le nombre des  éléments du tableau  
        CALL afficherTab ; Appel de la procédure d'affichage
        hlt     
        ; Définition de la procédure
        afficherTab proc near  ; début de la procédure
                 MOV BP, SP        ;  adresse sommet pile      
                 MOV SI, [BP+4]   ; Lire l'adresse du tableau
                 MOV CX, [BP+2] ; Lire le nombre des éléments du tableau
          lab: MOV AX, [SI] 
                 CALL print_num 
                 PRINTN '' 
                 ADD SI,2
                 LOOP lab
 	    RET  
        afficherTab endP   ; fin de la procédure 
code ends
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM
end start
