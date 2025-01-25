/*import java.util.Random;

public class Point2D {
    double x;
    double y;
    double distance () { 

        return Math.sqrt(x*x+y*y);
        
    }
    double distance (Point2D p) { 

        return Math.sqrt((p.x-x)*(p.x-x)*(p.y-y)*(p.y-y));
        
    }

    void print ()
    {
        System.out.println("x="+ x+"y="+y+"distance=" + distance());
    }
    static double distance (Point2D p, Point2D w) { 

        return Math.sqrt((p.x-w.x)*(p.x-w.x)*(p.y-w.y)*(p.y-w.y));
        
    }*/
    public class Point2D {

        private double x;
        private double y;
    
        public Point2D() {
            this.x = Math.random();
            this.y = Math.random();
        }
    
        public Point2D(double x, double y) {
            this.x = x;
            this.y = y;
        }
    
        public double getX() {
            return x;
        }
    
        public void setX(double x) {
            this.x = x;
        }
    
        public double getY() {
            return y;
        }
    
        public void setY(double y) {
            this.y = y;
        }
    
        public double distance() {
            return Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
        }
    
        public double distance(Point2D p) {
            return Math.sqrt(Math.pow(this.x - p.x, 2) + Math.pow(this.y - p.y, 2));
        }
    
        public void move(double dx, double dy) {
            this.x += dx;
            this.y += dy;
        }
    
        public void change(double newX, double newY) {
            this.x = newX;
            this.y = newY;
        }
    
        public void print() {
            System.out.printf("Point coordinates: (%.2f, %.2f)\n", x, y);
            System.out.printf("Distance from origin: %.2f\n", distance());
        }
    
        public Point2D merge(Point2D p) {
            return new Point2D(this.x + p.x, Math.max(this.y, p.y));
        }
    
        public static Point2D merge(Point2D p1, Point2D p2) {
            return new Point2D(p1.x + p2.x, Math.max(p1.y, p2.y));
        }
    
        public boolean isEqual(Point2D p) {
            return Math.abs(this.distance() - p.distance()) < 0.001;
        }
    
        public static boolean isEqual(Point2D p1, Point2D p2) {
            return Math.abs(p1.distance() - p2.distance()) < 0.001;
        }
    }



    
    
   

    
       