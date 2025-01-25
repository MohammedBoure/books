

public class min {
    public static void main(String[] args) {
        int[] tableau = {10, 5, 2, 7, 1};
        int minValeur = min(tableau);
        System.out.println("Le minimum est : " + minValeur);
       
        
    }
    public static int min (int[] tableau) {
        int min = Integer.MAX_VALUE;
        for (int element : tableau) {
          if (element < min) {
            min = element;
          }
        }
        return min;
      }
      
      }
    
      

