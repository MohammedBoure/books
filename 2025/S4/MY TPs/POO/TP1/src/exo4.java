import java.util.Random;
import java.util.Scanner;


public class exo4 {
 
    public static void main(String[] args) {
        
        Scanner in = new Scanner (System.in);
        System.out.print("enter the number of points : ");
        int n = in.nextInt();
        System.out.print("enter the number of xP : ");
        double xP  = in.nextInt();
        System.out.print("enter the number of yP : ");
        double yP= in.nextInt();

        double[][] points = new double[n][2];
        Random random = new Random();
        for (int i = 0; i < n; i++) {
            points[i][0] = random.nextDouble() * 100; // Set x-coordinate 
            points[i][1] = random.nextDouble() * 100; // Set y-coordinate
        }
        
       
        for (int i = 0; i < n; i++) {
            double distance = calculateDistance(xP, yP, points[i][0], points[i][1]);
           
            System.out.printf("Distance between P and point (%f, %f): %.2f\n", points[i][0], points[i][1], distance);
        }
    }
    public static double calculateDistance(double x1, double y1, double x2, double y2) {
        return Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
    }
}
