// write a program to show how to override the calculateBill() method of commercial class inside the domestic class
package main.java;

// Electrycity Bill for commercial connection
class Commercial
{
    // take customer name
    private String name;
    // store customer name into name
    void setName(String name)
    {
        this.name = name;
    }
    // retrieve the name
    String getName()
    {
        return name;
    }
    // to calculate bill taking Rs. 5.00 per unit
    void calculateBill(int units)
    {
        System.out.println("Customer : "+ getName());
        System.out.println("Bill amount = "+ units * 5.00);
    }
}

// Electrycity bill for domestic connection
class Domestic extends Commercial
{
    // override the calculateBill() of commercial class, to calculate
    // bill at Rs. 2.50 per unit
    void calculateBill(int units) {
        System.out.println("Customer : " + getName());
        System.out.println("Bill amount = " + units * 2.50);
    }
}
// calculate electrycity bill for commercial and domestic users
public class ElectrycityBill {
    public static void main(String args[])
    {
        // call calculateBill() using the commercial object
        Commercial c = new Commercial();
        c.setName("Jatin Sharma");
        c.calculateBill(100);
        // call calculateBill() using the domestic object
        Domestic d = new Domestic();
        d.setName("Himanshu Sharma");
        d.calculateBill(100);
    }
}
