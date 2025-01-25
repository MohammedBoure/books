#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define max 100

typedef struct automate
{
    int nbe; // nombre d'états
    int etat[max];
    int etat_in; // nombre d'états initiaux
    int etatin[max];
    int etat_accep; // nombre d'états acceptants
    int etataccep[100];
    int nb_lettre;
    int matrice_transition[max][max];
    int nouvel_etat_initial; // Pour stocker le nouvel état initial si nécessaire
    int etat_initial;
  
} automate;
//________________________________________________________saisir_automate_______________________________________________________________
//____________________________________________________________________________________________________________________________________________

// Fonction permettant de saisir un automate

void saisir_automate(automate *a)
{
    int i,p,c,j;
    printf("Entrez le nombre de lettres : \n");
    scanf("%d",&a->nb_lettre);
  
    printf("Entrez le nombre d'états = \n");
    scanf("%d", &a->nbe);

    for (int i = 0; i < a->nbe; i++) {
        for (int j = 0; j < a->nb_lettre; j++) {
            a->matrice_transition[i][j] = -1;
        } 
    }
        
    printf("Entrez les états :\n");
    for(i=0;i<a->nbe;i++){
        printf("E");
        scanf("%d",&a->etat[i]);
    }
  
    printf("Entrez le nombre d'états initiaux = ");
    scanf("%d", &a->etat_in);
    a->etat_initial=a->etat_in;
    if(a->etat_in>1)
        a->nb_lettre = a->nb_lettre + a->etat_in; 
    printf("Entrez l'état initial = ");
  
    // Vérifiez si l'état initial est valide
    do{
        for(i=0;i<a->etat_in;i++){
            c=0;
            p=0;
            printf("E");
            scanf("%d", &a->etatin[i]);
            do{
                if(a->etatin[i]==a->etat[p]){
                    c=1;
                    break;
                }
                p++;
            }while(p<a->nbe);
            if(c==0){
                i--;
                printf("Entrez un état valide\n");
            }
        }
    }while(i<a->etat_in);
   
    printf("Entrez le nombre d'états acceptants =");
    scanf("%d", & a->etat_accep);
    printf("Entrez les états acceptants :");
  
    // Vérifiez si l'état acceptant est valide
    do{
        for(i=0;i<a->etat_accep;i++){
            c=0;
            p=0;
            printf("E");
            scanf("%d", &a->etataccep[i]);
            do{
                if(a->etataccep[i]==a->etat[p]){
                    c=1;
                    break;
                }
                p++;
            }while(p<a->nbe);
            if(c==0){
                i--;
                printf("Entrez un état valide\n");
            }
        }
    }while(i<a->etat_accep);
  
    // Entrez la matrice de transition
  
    printf("Entrez la matrice de transition :\n");
    int k=0;
    if(a->etat_in>1)
        a->nb_lettre= a->nb_lettre-a->etat_in;
    do{
        for ( i = 0; i < a->nbe; i++)
        {
            printf("E%d :\n", a->etat[i]);
   

            for ( j = 0; j < a->nb_lettre; j++)
            { 
                p=0;
                c=0;

                // Vérifiez si l'état est valide

                printf(" %c : ", 'a' + j);
                printf("E");
                scanf("%d", &a->matrice_transition[i][j]);
                do{
                    if (a->matrice_transition[i][j]==a->etat[p])
                    {
                        c=1;
                        break;
                    }
                    p++;
                }while(p<a->nbe);
                if(c==0){
                    i--;
                    j--;
                    if(i<0)
                        i=0;
                    if(j<0)
                        j=0;
                    printf("Entrez un état valide \n");
                }
            }
        }
    }  while ((i<a->nbe )&&( j <a->nb_lettre));
}

// Fonction pour afficher un automate 
//________________________________________________________affiche automate_________________________________________________________________________________
//_________________________________________________________________________________________________________________________________________________

void afficher_automate(automate a, int p) {
    if(p==0){
        int i, j;
        printf("Le nombre de lettres est : %d \n", a.nb_lettre);
        printf("Le nombre d'états est %d\n", a.nbe);
        printf("Les états sont : \n");
        for(i=0;i<a.nbe;i++){
            printf("E%d",a.etat[i]);
            printf("\t");
        }
        printf("\n");
        printf("Les états initiaux sont : \n");
        for(i=0;i<a.etat_in;i++){
            printf("E%d",a.etatin[i]);
            printf("\t");
        }
        printf("\n");
        printf("Les états acceptants sont:\n"); 
        for(i=0;i<a.etat_accep;i++){
            printf("E%d",a.etataccep[i]);
            printf("\t");
        }
        printf("\n");
        // Affichez la ligne d'en-tête pour la matrice
        printf("La matrice de transition est :\n");
        printf("\t");  // Commencez par une tabulation pour l'alignement
        for (j = 0; j < a.nb_lettre ; j++) {  // Affichez toutes les lettres sauf la dernière (ε)
            printf("%c\t", 'a' + j);
        }
        for (j = 0; j < a.etat_initial ; j++) {  
            printf("ε\t");  // Imprimez explicitement ε comme en-tête de la dernière colonne
        }
        printf("\n");

        // Affichez les transitions d'état
        for (i = 0; i < a.nbe; i++) {
            printf("E%d", a.etat[i]);  // Imprimez le numéro de l'état
            for (j = 0; j < a.nb_lettre+a.etat_initial; j++) {  // Parcourez chaque lettre, y compris ε
                if (a.matrice_transition[i][j] == -1) {
                    printf("\t-");  // Indiquez qu'il n'y a pas de transition
                } else {
                    printf("\tE%d", a.matrice_transition[i][j]);  // Imprimez l'état cible
                }
            }
            printf("\n");  // Nouvelle ligne après les transitions de chaque état
        }
    }
    if(p==1){
        int i;
        printf("Le nombre de lettres est : %d \n", a.nb_lettre);
        printf("Le nombre d'états est %d\n", a.nbe);
        printf("Les états sont : \n");
        for(i=0;i<a.nbe;i++){
            printf("E%d",a.etat[i]);
            printf("\t");
        }
        printf("\n");
        printf("Les états initiaux sont : \n");
        for(i=0;i<a.etat_in;i++){
            printf("E%d",a.etatin[i]);
            printf("\t");
        }
        printf("\n");
        printf("Les états acceptants sont:\n"); 
        for(i=0;i<a.etat_accep;i++){
            printf("E%d",a.etataccep[i]);
            printf("\t");
        }
        printf("\n");
        printf("La matrice de transition est :\n ");
        for (int i = 0; i < a.nb_lettre; i++)
            printf("\t%c", 'a' + i);
        printf("\n");
        for (int i = 0; i < a.nbe; i++)
        {
            printf("E%d", a.etat[i]);
            for (int j = 0; j < a.nb_lettre; j++)
                printf("\tE%d", a.matrice_transition[i][j]);
            printf("\n");
        }
    }
}

//_______________________________________________________elimination des etats initiaux__________________________________________________________
//_________________________________________________________________________________________________________________________________________________________

void ajouter_nouvel_etat_initial(automate *a) {

    if (a->etat_in==1)
        return;
    else{
        // En supposant que ε est la dernière colonne dans la matrice de transition
        int epsilon_index = a->etat_in+1 ;  // Dernier index pour ε

        // Initialiser les ε-transitions pour tous les états à -1 (pas de ε-transition)
        for (int i = 0; i < a->nbe; i++) {
            for (int j = a->nb_lettre+a->etat_in; j >a->nb_lettre -1 ; j--) {
                a->matrice_transition[i][j] = -1;
            }
        }

        // Vérifiez si plusieurs états initiaux doivent être consolidés
        if (a->etat_in > 1) {
            int new_state_index = a->nbe;  // Le nouvel état sera le suivant dans le tableau
            a->etat[new_state_index] = new_state_index+1;  // Attribuez l'index de l'état
            a->nbe++;  // Incrémente le nombre d'états

            // Initialiser les transitions pour le nouvel état à -1 (pas de transition)
            for (int j = 0; j < a->nb_lettre; j++) {
                a->matrice_transition[new_state_index][j] = -1;
            }
            // Définir les ε-transitions du nouvel état vers tous les états initiaux originaux
            while(epsilon_index>a->nb_lettre) {
                for (int i = 0; i < a->etat_in; i++) {
                    a->matrice_transition[new_state_index][epsilon_index] = a->etatin[i];
                    epsilon_index--;
                }
            }

            // Définir le nouvel état comme le seul état initial
            a->etatin[0] = new_state_index;
            a->etat_in = 1;  // Réinitialiser à un seul état initial
        } else if (a->etat_in == 1) {
            // S'il n'y a qu'un seul état initial, potentiellement pas besoin d'un nouvel état
            // Vous pouvez toujours vouloir vous assurer que la ε-transition est configurée si nécessaire pour la cohérence
            a->matrice_transition[a->etatin[0]][epsilon_index] = a->etatin[0]; // Auto-transition sur ε, si nécessaire
        }
    }
}
//________________________________________________elemination des transitions des epsilons_____________________________________________
//_____________________________________________________________________________________________________________________________________

void remove_epsilon_transitions(automate *a,int p) {
    // Supprimez toutes les ε-transitions, en consolidant les transitions d'états
    // C'est un exemple simplifié et peut nécessiter une adaptation en fonction des exigences spécifiques
    if(p==1){
        for (int i = 0; i < a->nbe; i++) {
            for (int j = 0; j < a->nbe; j++) {
                if (a->matrice_transition[i][j] == -1) {
                    continue; // Pas de ε-transition de i à j
                }

                // Pour chaque ε-transition de i à j, itérez à travers toutes les transitions de j
                for (int k = 0; k < a->nb_lettre; k++) {
                    if (a->matrice_transition[j][k] != -1) {
                        // S'il y a une transition valide de j vers un état via k,
                        // ajouter une transition directe de i à cet état via k
                        if (a->matrice_transition[i][k] == -1) {
                            a->matrice_transition[i][k] = a->matrice_transition[j][k];
                        }
                    }
                }
            }
        }
        printf("Les transitions epsilon ont été supprimées. L'automate a été mis à jour.\n");
    }
    else{
        printf("Il n'y a pas de transitions epsilon sur votre automate !\n");
    }

    // Optionnellement, supprimez la colonne ε de la matrice de transition, pas nécessaire en C,
    // mais pourrait être requis pour ajuster les dimensions de la matrice dans d'autres contextes.
}



//______________________________________________________________ ajouter_transition_____________________________________________________
//_____________________________________________________________________________________________________________________________________________

void ajouter_transition(automate *a, int etat_depart, int etat_arrivee, char lettre) {
    // Recherchez l'indice de l'état de départ dans le tableau d'états
    int index_depart = -1;
    for (int i = 0; i < a->nbe; i++) {
        if (a->etat[i] == etat_depart) {
            index_depart = i;
            break;
        }
    }

    // Recherchez l'indice de l'état d'arrivée dans le tableau d'états
    int index_arrivee = -1;
    for (int i = 0; i < a->nbe; i++) {
        if (a->etat[i] == etat_arrivee) {
            index_arrivee = i;
            break;
        }
    }

    // Si l'état de départ ou d'arrivée n'est pas trouvé, affichez un message d'erreur
    if (index_depart == -1 || index_arrivee == -1) {
        printf("Erreur : État de départ ou d'arrivée non trouvé.\n");
        return;
    }

    // Convertissez la lettre en indice pour la matrice de transition
    int lettre_index = lettre - 'a';

    // Ajoutez la transition entre les états de départ et d'arrivée
    a->matrice_transition[index_depart][lettre_index] = etat_arrivee;

    // Affichez un message pour confirmer l'ajout de la transition
    printf("Transition ajoutée avec succès de E%d à E%d avec la lettre '%c'.\n", etat_depart, etat_arrivee, lettre);
}

//__________________________________________________________________programe___________________________________________________________________
//_____________________________________________________________________________________________________________________________________________
 

int main() {


   
    automate a;

    // Entrez un automate
    printf("Saisir l'automate :________________________________________\n\n");
    saisir_automate(&a);
    printf("\n");

    // Ajoutez un nouvel état initial si nécessaire
    ajouter_nouvel_etat_initial(&a);
    
    // Affichez l'automate avant toute modification
    printf("Automate avant modification :________________________________________\n\n");
    afficher_automate(a, 1);
    printf("\n");

    // Supprimez les transitions epsilon si nécessaire
    printf("Supprimez les transitions epsilon si nécessaire :________________________________________\n\n");
    remove_epsilon_transitions(&a, 1);
    printf("\n");

    // Affichez l'automate après la suppression des transitions epsilon
    printf("Automate après suppression des transitions epsilon :________________________________________\n\n");
    afficher_automate(a, 1);
    printf("\n");

    // Ajoutez une nouvelle transition entre deux états
    printf("Ajoutez une nouvelle transition entre deux états :________________________________________\n\n");
    ajouter_transition(&a, 1, 2, 'a');
    printf("\n");

    // Affichez l'automate après l'ajout de la nouvelle transition
    printf("Automate après l'ajout de la nouvelle transition :________________________________________\n\n");
    afficher_automate(a, 1);
    printf("\n");

    return 0;


   // automate a;

    // Entrez un automate
     //printf("saisire l'automate :________________________________________\n");
     //("\n\n");
    //saisir_automate(&a);
     //printf("\n\n");

    //ajouter_nouvel_etat_initial(&a);

   //ajouter_transition(&a, 1, 2, 'c');
  //  afficher_automate(a, 1);


 //printf("Automate apres modification:________________________________________\n");
    //3printf("\n\n");
    // Affichez l'automate
   
    // printf(": Supprimez les transitions epsilon si nécessaire________________________________________\n");

     //remove_epsilon_transitions(&a, 1);
     //afficher_automate(a, 1);




   //3 return 0;
}
