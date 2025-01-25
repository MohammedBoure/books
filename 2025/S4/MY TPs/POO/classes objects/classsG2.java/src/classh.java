public class classh {
    public static void main(String[] args) {
      // Create two Point3d objects
      Point3D point1 = new Point3D(1.0, 2.0, 3.0);
      Point3D point2 = new Point3D(4.0, 5.0, 6.0);
  
      // Print the points
      System.out.println("Point 1: " + point1.toString());
      System.out.println("Point 2: " + point2.toString());
  
      // Move point1 by 2 units on each axis
      point1.move(2.0, 2.0, 2.0);
      System.out.println("Point 1 after moving: " + point1);
  
      // Change point2's coordinates
      point2.change(7.0, 8.0, 9.0);
      System.out.println("Point 2 after changing: " + point2);
  
      // Calculate the distance between point1 and point2
      double distance = point1.distance(point2);
      System.out.printf("Distance between point1 and point2: %.2f\n", distance);
  
      // Check if point1 and point2 are equal
      if (point1.equals(point2)) {
        System.out.println("Point 1 and point 2 are equal.");
      } else {
        System.out.println("Point 1 and point 2 are not equal.");
      }
    }
  }
  