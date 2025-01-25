public class classg2 {

public static void main(String[] args) {
    Point2D p1 = new Point2D();
    Point2D p2 = new Point2D(3.5, 2.0);

    System.out.println("Point 1:");
    p1.print();

    System.out.println("\nPoint 2:");
    p2.print();

    System.out.println("\nDistance between p1 and p2: " + p1.distance(p2));

    System.out.println("\nMoving p1 by (1.0, -0.5):");
    p1.move(1.0, -0.5);
    p1.print();

    System.out.println("\nAre p1 and p2 equal (distance-based)? " + p1.isEqual(p2));
    System.out.println("Are p1 and p2 equal (distance-based) (static method)? " + Point2D.isEqual(p1, p2));

    System.out.println("\nMerged point of p1 and p2:");
    Point2D mergedPoint = p1.merge(p2);
    mergedPoint.print();
    
 
}
}







   /* public static void main(String[] args) throws Exception {
        
       Point2D p = new Point2D();  p.x=14 ; p.y=6;
       Point2D s = new Point2D(); s.x=9; s.y=3;
    
    p.print();
    s.print();
    double d=p.distance(s);
    double t=s.distance(p);
     double r=Point2D.distance(p, s);
    System.out.println("Distance1=" +d+"Distance2="+t);
    System.out.println("Distance3=" +r);

    p.setX(3);
    p.setY(4);
    double x = p.getX();
    double y = p.getY();

}
       
}
*/




