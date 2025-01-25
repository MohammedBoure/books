import java.util.Scanner;

public class exo3 {

    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            System.out.print("Enter the number of prime numbers : ");
            int N = scanner.nextInt();
            if (N <= 0) {
                System.out.println(" N must be a positive");
                return;
            }
            int sum = 0;
            int cpt = 0;
            int number = 2;

            while (cpt < N) {
                if (Prime(number)) {
                    sum += number;
                    cpt++;
                }
                number++;
            }

            System.out.println("The sum of the first " + N + " prime numbers is: " + sum);
        }
    }

    public static boolean Prime(int number) {
        if (number <= 1) {
            return false;
        }
        for (int i = 2; i * i <= number; i++) {
            if (number % i == 0) {
                return false;
            }
        }
        return true;
    }
}
