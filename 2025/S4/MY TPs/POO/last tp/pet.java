

public class pet {
String name ;
String color;
    public String getName() {
        return name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    public void setName(String c){
        this.name =c;
    }
    public pet (String name, String color){
        setColor(color);
        setName(name);
    }
    public void speak(){
        System.out.println("I'm your cuddly little pet");
    }
    public void afficher(){
        System.out.printf("le nom d'animal est %s et sa couleur est %s %n",getName(),getColor());
    }

    
    public static String[] addPet(int n){
        String[] tab = new String[10];
        for(int i =0;i<10;i++){
            if(n ==1)
                tab[i]="dog";
            if(n ==2)
                tab[i]="cat";
            if(n ==3)
                tab[i]="chameleon";
        }
        return tab;
    }
    public static void printPet(String [] tab){
        for (String s : tab) {
            System.out.printf("%s %n, ",s);
        }
    }
    public static int amountOfPets(String[]tab, String p){
        int cpt =0;
        for(int i =0;i<10;i++) {
            if (tab[i] == "p") {
                cpt++;
            }
        }
        return cpt;
    }
    public static void display(String [] tab){
        System.out.println("le nombre des chats est : " + amountOfPets(tab,"cat"));
        System.out.println("le nombre des chiens est : " + amountOfPets(tab,"dog"));
        System.out.println("le nombre des chemeleon est : "+ amountOfPets(tab,"chameleon"));

    }



}
