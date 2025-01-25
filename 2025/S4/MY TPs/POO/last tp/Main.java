// Exercise 17 Based on Exercise 15:
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

// Définition de la classe Pet
class Pet {
    // Cette classe peut être étendue pour représenter différents types d'animaux de compagnie
}

// Définition des classes pour les différents types de Pets
class Dog extends Pet {
    // Implémentation spécifique pour un chien
    @Override
    public String toString() {
        return "Dog";
    }
}

class Cat extends Pet {
    // Implémentation spécifique pour un chat
    @Override
    public String toString() {
        return "Cat";
    }
}

class Chameleon extends Pet {
    // Implémentation spécifique pour un caméléon
    @Override
    public String toString() {
        return "Chameleon";
    }
}

// Définition de la classe Box
class Box {
    String color;
    private Pet pet;

    public Box(String color) {
        this.color = color;
    }

    public void addPet(Pet pet) {
        this.pet = pet;
    }

    public void display() {
        String petType = "";
        if (pet instanceof Dog) {
            petType = "Dog";
        } else if (pet instanceof Cat) {
            petType = "Cat";
        } else if (pet instanceof Chameleon) {
            petType = "Chameleon";
        }
        System.out.println("Box color: " + color + ", Pet: " + petType);
    }
}

public class Main {
    public static void main(String[] args) {
        // Création de la liste des Pets
        List<Pet> petsList = new ArrayList<>();
        Random random = new Random();

        // Génération d'un nombre aléatoire entre 1 et 3 pour déterminer le type de Pet à ajouter
        int numPets = random.nextInt(3) + 1;

        // Remplissage de la liste des Pets
        for (int i = 0; i < numPets; i++) {
            int type = random.nextInt(3) + 1;
            if (type == 1) {
                petsList.add(new Dog());
            } else if (type == 2) {
                petsList.add(new Cat());
            } else {
                petsList.add(new Chameleon());
            }
        }

        // Affichage de chaque élément de la liste
        for (Pet pet : petsList) {
            if (pet instanceof Dog) {
                System.out.println("Dog");
            } else if (pet instanceof Cat) {
                System.out.println("Cat");
            } else if (pet instanceof Chameleon) {
                System.out.println("Chameleon");
            }
        }

        // Affichage du nombre de chaque type de Pet dans la liste
        int numDogs = 0, numCats = 0, numChameleons = 0;
        for (Pet pet : petsList) {
            if (pet instanceof Dog) {
                numDogs++;
            } else if (pet instanceof Cat) {
                numCats++;
            } else if (pet instanceof Chameleon) {
                numChameleons++;
            }
        }
        System.out.println("Number of Dogs: " + numDogs);
        System.out.println("Number of Cats: " + numCats);
        System.out.println("Number of Chameleons: " + numChameleons);

        // Création du tableau des boxes
        Box[] boxes = new Box[3];
        boxes[0] = new Box("Red");
        boxes[1] = new Box("Blue");
        boxes[2] = new Box("Green");

        // Remplissage et affichage des éléments du tableau des boxes
        for (int i = 0; i < boxes.length; i++) {
            if (i < petsList.size()) {
                boxes[i].addPet(petsList.get(i));
                boxes[i].display();
            } else {
                System.out.println("Box color: " + boxes[i].color + ", No Pet");
            }
        }
    }
}





// 1. Write a program that creates a list (or array) of Pets.
// An element of the list must be Dog, Cat or Chameleon. To fill the list, generate a random number from 1 to 3. If the generated number is 1, add a Dog, 2 add a Cat, 3 add a Chameleon.

/*public class exo17 {
    public static void main(String[] args) {
        // Create an empty list of pets
        List<Pet> pets = new ArrayList<>();

        // Generate a random number between 1 and 3
        Random random = new Random();
        for (int i = 0; i < 3; i++) {
            int randomNumber = random.nextInt(3) + 1;

            // Add a pet to the list based on the random number
            switch (randomNumber) {
                case 1:
                    pets.add(new Dog());
                    break;
                case 2:
                    pets.add(new Cat());
                    break;
                case 3:
                    pets.add(new Chameleon());
                    break;
            }
        }

        // 2. Display each element of the list
        System.out.println("Pets:");
        for (Pet pet : pets) {
            System.out.println(pet);
        }

        // 3. Display the number of cats, dogs and chameleons in the list
        int countDogs = 0;
        int countCats = 0;
        int countChameleons = 0;

        for (Pet pet : pets) {
            if (pet instanceof Dog) {
                countDogs++;
            } else if (pet instanceof Cat) {
                countCats++;
            } else if (pet instanceof Chameleon) {
                countChameleons++;
            }
        }

        System.out.println("\nNumber of Dogs: " + countDogs);
        System.out.println("Number of Cats: " + countCats);
        System.out.println("Number of Chameleons: " + countChameleons);

        // 4. Create a Box class that is characterized by a color and contains a Pet.
        // The Box class has two methods: addPet to put a Pet in the Box and display to display the color and the Pet of the box as well as the type of Pet (dog or cat or chameleon).

        public class Box {
            private String color;
            private Pet pet;

            public Box(String color) {
                this.color = color;
            }

            public void addPet(Pet pet) {
                this.pet = pet;
            }

            public void display() {
                System.out.println("Box Color: " + color);
                System.out.println("Pet: " + pet);
                if (pet instanceof Dog) {
                    System.out.println("  Pet Type: Dog");
                } else if (pet instanceof Cat) {
                    System.out.println("  Pet Type: Cat");
                } else if (pet instanceof Chameleon) {
                    System.out.println("  Pet Type: Chameleon");
                }
            }
        }

        // 5. In a main class, create an array of boxes, fill and display the elements of this array.

        Box[] boxes = new Box[3];
        for (int i = 0; i < boxes.length; i++) {
            boxes[i] = new Box("Box " + (i + 1));
            boxes[i].addPet(pets.get(i));
        }

        System.out.println("\nBoxes:");
        for (Box box : boxes) {
            box.display();
            System.out.println();
        }
    }
}

// Class representing a Pet (abstract)
abstract class Pet {
    public abstract String toString();
}

// Class representing a Dog
class Dog extends Pet {
    @Override
    public String toString() {
        return "Dog";
    }
}

// Class representing a Cat
class Cat extends Pet {
    @Override
    public String toString() {
        return "Cat";
    }
}

// Class representing a Chameleon
class Chameleon extends Pet {
    @Override
    public String toString() {
        return "Chameleon";
    }
}*/
