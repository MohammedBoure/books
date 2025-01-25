public class Circle {

    private Point2D center;
    private double radius;

    public Circle() {
        this.center = new Point2D(0, 0);
        this.radius = 1.0;
    }

    public Circle(Point2D center, double radius) {
        this.center = center;
        this.radius = radius;
    }

    public Point2D getCenter() {
        return center;
    }

    public void setCenter(Point2D center) {
        this.center = center;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public double area() {
        return Math.PI * Math.pow(radius, 2);
    }

    public double perimeter() {
        return 2 * Math.PI * radius;
    }

    public void print() {
        System.out.printf("Circle center: (%.2f, %.2f)\n", center.getX(), center.getY());
        System.out.printf("Circle radius: %.2f\n", radius);
        System.out.printf("Circle area: %.2f\n", area());
        System.out.printf("Circle perimeter: %.2f\n", perimeter());
    }

    public boolean isInside(Point2D point) {
        return center.distance(point) <= radius;
    }

    public boolean isEqual(Circle other) {
        return this.area() == other.area() ;
    }
}
