public class dog extends pet{
    public dog(String name, String color) {
        super(name, color);
    }

    public void catchStick(){
        System.out.println("ok Master, I do");
    }
    public void move(){
        System.out.println("ok Master, I do");
    }
    @Override
    public void speak(){
        System.out.println("don't give me orders!!");
        System.out.println("I speak  only when I want to  ");
    }

  
}
