public class max{

    public static int max(int[] tableau) {
      int max = Integer.MIN_VALUE;
      for (int element : tableau) {
        if (element > max) {
          max = element;
        }
      }
      return max;
    }
  
    public static void main(String[] args) {
      int[] tableau = {10, 5, 2, 7, 1};
      int maxValeur = max(tableau);
      System.out.println("Le maximum est : " + maxValeur);
    }
  }
  