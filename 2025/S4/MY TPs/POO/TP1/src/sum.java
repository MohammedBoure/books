
public class sum {

    public static void main(String[] args) {
        
        int[] tableau = {10, 5, 2, 7, 1};
        int somme = sum(tableau);
        System.out.println("La somme est : " + somme );


    }


    public static int sum (int[] tableau )
      {
            int somme = 0;
            for (int element : tableau) {
              somme += element;
            }
            return somme;
          }
          
    
}
