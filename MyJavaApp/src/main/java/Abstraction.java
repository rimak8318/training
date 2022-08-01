package main.java;


abstract class Animal{
    protected String color;
    public abstract void getColor();
}

class Dog extends Animal{
    public void getColor()
    {
        color="Black";
        System.out.println("Dog color is :"+color);
    }

}
public class Abstraction {
    public static void main(String[] args) {
        Animal a=new Dog();

        a.getColor();
    }

}
