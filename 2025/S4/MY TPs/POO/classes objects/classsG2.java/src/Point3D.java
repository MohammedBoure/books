
public class Point3D extends Point2D {
    private double z;
  
    public Point3D(double x, double y, double z) {
      super(x, y);
      this.z = z;
    }
  
    public double getZ() {
      return z;
    }
  
    public void setZ(double z) {
      this.z = z;
    }
  
    @Override
    public String toString() {
      return "Point3D(" + getX() + ", " + getY() + ", " + z + ")";
    }
  
    // Override the print() method to include z
    @Override
    public void print() {
      System.out.println("(" + getX() + ", " + getY() + ", " + z + ")");
    }
  
    // Override the isEqual() method to include z
    @Override
    public boolean equals(Object o) {
      if (this == o) return true;
      if (o == null || getClass() != o.getClass()) return false;
      if (!super.equals(o)) return false;
      Point3D Point3D= (Point3D) o;
      return Double.compare(Point3D.z, z) == 0;
    }
  
   
    // Override the distance() method to include z in the distance calculation
   @Override
   public double distance(Point2D p) {
     Point3D Point3D = (Point3D) p;
     return Math.sqrt(Math.pow(getX() - Point3D.getX(), 2) + Math.pow(getY() - Point3D.getY(), 2) + Math.pow(z - Point3D.z, 2));
   }
 
   // Move the point by dx, dy, and dz
   public void move(double dx, double dy, double dz) {
     super.move(dx, dy);
     this.z += dz;
   }
 
   // Change the point's coordinates to x, y, and z
   public void change(double x, double y, double z) {
     super.change(x, y);
     this.z = z;
   }
 }
