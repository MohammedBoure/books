import java.util.Random;

public class chamellon extends pet {
    public chamellon(String name, String color) {
        super(name, color);
    }
    public String changeColor(){
        String [] colors = {"red","green","yellow","blue"};
        Random r = new Random();
        int i = r.nextInt(4);
        for(int j = 0; j<4; j++){
            setColor(colors[i]);
        }
        return getColor();
    }
    @Override
    public void speak (){
        System.out.println("silent all the time");

    }

   
}
