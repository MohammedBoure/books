#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ETATS 5 // nombre d'etats de  l'automate
#define TALPHABET 2 //nombre de letter dans l'alphabet
#define longMot 50// longeur maximal d'un mot




typedef struct 
{ 
    int nbrEtat;// nombre d'etats de  l'automate
    int etatInitial;// nombre d'etats Initial de  l'automate
    int etatAcceptant;// nombre d'etats  Acceptant de  l'automate
    int matTrans [ETATS][TALPHABET]; // matrice de transition
    
}automate;

//*******************************************************************
//affichage

void affiche_automate(automate a)
{
    int i,j;
    printf("Nombre d'etats : %d \n",a.nbrEtat);
    printf("Etat initial : %d\n",a.etatInitial);
    printf("Etat initial : %d\n",a.etatAcceptant);

    for (i=0 ; i<TALPHABET;i++)
    {
        printf("\t %c",'a'+i);
    }
      for (i=0 ; i<a.nbrEtat;i++)
      {
        printf("\n E %d: ",i);
        for (j=0 ; j<TALPHABET;j++)
        {
        printf("\t E %d",a.matTrans[i][j]);

      }
}
printf("\n");
}

//*******************************************************************
 //saisir les automates

void saisis_automate(automate *a) {
    int i,j;
    printf("entrez le nombre d'etats");
    scanf("%d",&(a->nbrEtat));
    printf("entrez le nombre d'etats initial");
    scanf("%d",& a->etatInitial);
    printf("entrez le nombre d'etats acceptant");
    scanf("%d",&(a->etatAcceptant));
    for(i=0;i<a->nbrEtat;i++)
    {
        printf(" entrez les transitions de E%d :\n",i);
        for(j=0;j<TALPHABET;j++)
        {
            printf("%c:",'a'+j);
            printf("\n");
            scanf("%d",&(a->matTrans[i][j]));
        }
    }
}

//*******************************************************************

int applique_trans(automate a, int etat_courrant,char lettre)
{
    int  res;
    res=a.matTrans[etat_courrant][lettre-'a'];
    return res;
}


//**********************************************************************

//teste si une chain de caractere contient la lettre a et b et affiche le resultat

void test_mot( automate a)
{
    char mot [longMot ];
    char *lettre_courrant;
    int  etat_courrant;
    affiche_automate(a);
    printf("saisir un mot contient lettre a et b :");
    scanf("%s",mot);
    lettre_courrant=mot;
    etat_courrant=a.etatInitial;
    while (*lettre_courrant!= '\0')
    {
        etat_courrant=applique_trans(a,etat_courrant,*lettre_courrant);
        lettre_courrant++;
    }
    if(etat_courrant==a.etatAcceptant)
    
    {printf("le mot %s est valide ",mot);
    }
    else{
        printf("le mot %s pas valide",mot);
    
    }
}
//**********************************************************************
 
 int main () {

    automate b;
    saisis_automate(&b);
    affiche_automate(b);
   test_mot(b);
    replay(b);
 }
 //**********************************************************************


 // cet fonction pour routourner le test
  void replay(  ) {
    char response[10];
    printf("\n Do you wanna replay the program? (yes/no): ");
    scanf("%s", response);

    // fait l'appel de main  function qui contient tout le programme
    if (strcmp(response, "yes") == 0) {
       main();
    } else {
        printf("Have a nice day!\n");
    }
}
   



