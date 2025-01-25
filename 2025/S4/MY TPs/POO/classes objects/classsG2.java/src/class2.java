
public class class2 {

    public static void main(String[] args) {
        Point2D center1 = new Point2D(1.0, 2.0);
        Circle c1 = new Circle(center1, 3.5);

        Point2D center2 = new Point2D(4.0, 1.0);
        Circle c2 = new Circle(center2, 2.0);

        System.out.println("Circle 1:");
        c1.print();

        System.out.println("\nCircle 2:");
        c2.print();

        System.out.println("\nIs point (3.0, 4.0) inside circle 1? " + c1.isInside(new Point2D(3.0, 4.0)));
        System.out.println("Are circle 1 and circle 2 equal (area-based)? " + c1.isEqual(c2));
    }
}
