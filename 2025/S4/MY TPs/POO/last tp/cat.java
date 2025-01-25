import java.util.Random;

public class cat  extends pet {

    public cat(String name, String color) {
        super(name, color);
    }
    public boolean sleep(){
        Random random = new Random();
        return random.nextBoolean();
    }
    @Override
    public void speak(){
        super.speak();
        System.out.println("I speak whenever you want to");
    }
    @Override
    public void afficher(){
        super.afficher();
       if(sleep()){
           System.out.println("le chat est dourmis");
       }
       else
           System.out.println("le chat est éveillée");
    }
   
}

