// Write a program to find the areas of Square and Rectangle by deriving them from shape
package main.java;

// Shape is the super class for square
// And square is the super class for Rectangle
class Shape
{
    // take protected type var
    protected double l;
    // parameterized constructor
    Shape(double l)
    {
        this.l = l;
    }
}
class Square extends Shape
{
    // call Shape's constructor and send l value
    Square(double l)
    {
        super(l);
    }
    // calculate area of square
    void area()
    {
        // because of inheritance. 'l' of Shape class is available
        System.out.println("Area of square = "+ (l*l));
    }
}
class Rect extends Square
{
    // var
    private double b;
    // call square's constructor and send x value
    Rect(double x, double y)
    {
        super(x);
        b = y;
    }
    // calculate area of rectangle
    void area()
    {
        // because of inheritance. 'l' of Shape class is available
        System.out.println("Area of Rectangle = "+ (l*b));
    }
}
public class Area {
    public static void main(String args[])
    {
        // display area of square
        Square s = new Square(5.5);
        s.area();
        // display area of rectangle
        Rect r = new Rect(5.5,6);
        r.area();
    }
}