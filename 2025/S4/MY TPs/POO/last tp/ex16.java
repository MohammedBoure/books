import java.util.Random;

class Pet {
    private String name;
    private String color;

    public Pet(String name, String color) {
        this.name = name;
        this.color = color;
    }

    public String getName() {
        return name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void speak() {
        System.out.println("I'm your cuddly little pet");
    }

    public boolean sleep() {
        Random rand = new Random();
        return rand.nextBoolean();
    }
}

class Dog extends Pet {
    public Dog(String name, String color) {
        super(name, color);
    }

    public void catchStick() {
        System.out.println("Ok Master, I do");
    }

    public void move() {
        System.out.println("Ok Master, I don't");
    }
}

class Cat extends Pet {
    private boolean sleeping;

    public Cat(String name, String color) {
        super(name, color);
    }

    public void speak() {
        System.out.println("Don't give me orders.");
        System.out.println("I speak only when I want to");
    }

    public void speak(boolean onDemand) {
        if (onDemand) {
            System.out.println("I'm your cuddly little pet");
            System.out.println("I speak whenever you want to");
        } else {
            System.out.println("Don't give me orders.");
            System.out.println("I speak only when I want to");
        }
    }

    public void setSleeping(boolean sleeping) {
        this.sleeping = sleeping;
    }

    public void display() {
        System.out.println("Name: " + getName());
        System.out.println("Color: " + getColor());
        System.out.println("Sleeping: " + sleeping);
    }
}

class Chamellon extends Pet {
    public Chamellon(String name, String color) {
        super(name, color);
    }

    public void changeColor() {
        Random rand = new Random();
        int i = rand.nextInt(4);
        String newColor;
        switch (i) {
            case 0:
                newColor = "Red";
                break;
            case 1:
                newColor = "Green";
                break;
            case 2:
                newColor = "Yellow";
                break;
            case 3:
                newColor = "Blue";
                break;
            default:
                newColor = "Unknown";
                break;
        }
        setColor(newColor);
    }

    public void speak() {
        System.out.println("Silent all time");
    }
}

public class ex16 {
    public static void main(String[] args) {
        Dog dog = new Dog("Fido", "Brown");
        System.out.println("Dog's name: " + dog.getName());
        System.out.println("Dog's color: " + dog.getColor());
        dog.catchStick();
        dog.move();

        Cat cat = new Cat("Whiskers", "Grey");
        System.out.println("Cat's name: " + cat.getName());
        System.out.println("Cat's color: " + cat.getColor());
        cat.speak();
        cat.setSleeping(cat.sleep());
        cat.display();
        cat.speak(true);

        Chamellon chamellon = new Chamellon("Leon", "Green");
        System.out.println("Chamellon's name: " + chamellon.getName());
        System.out.println("Chamellon's color: " + chamellon.getColor());
        chamellon.changeColor();
        System.out.println("Chamellon's new color: " + chamellon.getColor());
        chamellon.speak();
    }
}
