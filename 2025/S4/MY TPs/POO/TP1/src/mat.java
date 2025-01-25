public class mat {
    public static void main(String[] args) {
        int[][] matrice = {{10, 20}, {30, 40}, {50, 60}};
        int maxValeur = max(matrice);
        System.out.println("Le maximum est : " + maxValeur);
      }

      public static int max(int[] tableau) {
        int max = Integer.MIN_VALUE;
        for (int element : matrice)    
        {
          if (element > max) {
            max = element;
          }
        }
        return max;
      }
}
