import java.util.Random;
import java.util.Scanner;

public class exo2 {
    public static void main(String[] args) throws Exception {
       
        Random random = new Random();
        int numberToGuess = random.nextInt(10) + 1; // Generate a random number between 1 and 10
        int K= 5;

        while (K > 0) {
            System.out.println("u only have " + K + " tries left.");
            System.out.print("Guess a number between 1 and 10: ");

           
            @SuppressWarnings("resource")
            int guess = new Scanner(System.in).nextInt();

            if (guess == numberToGuess) {
                System.out.println("Congratulations! You guessed the number in " + (5 - K) + " tries.");
                break;
            } else if (guess < numberToGuess) {
                System.out.println("Your guess is too low. Try again.");
            } else {
                System.out.println("Your guess is too high. Try again.");
            }

          K--;
        }

        if (K == 0) {
            System.out.println("Sorry, u ran out of tries. The number was " + numberToGuess + ".");
        }
    }
}