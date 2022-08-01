package main.java;
public class Student {
    String name, address;
    int marks, id;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public static void main(String[] args) {
        Student s = new Student();
        s.setId(1001);
        s.setName("Jatin Sharma");
        s.setAddress("wz-109, Tilak Nagar,Delhi");
        s.setMarks(840);

        System.out.println("Id = " + s.getId());
        System.out.println("Name = " + s.getName());
        System.out.println("Address = " + s.getAddress());
        System.out.println("Marks = " + s.getMarks());
    }

}

//// Program to access the super class method and instance variable by using super keyword from sub class
//
//package main.java;
//
//// Super - to access the super class method and variable
//class One {
//    // super class var
//    int i = 10;
//    // super class method
//    void show()
//    {
//        System.out.println("Super Class Method : i = "+i);
//    }
//}
//class Two extends One{
//    // sub class var
//    int i = 20;
//
//    // sub class method
//    void show()
//    {
//        System.out.println("Sub CLass Method : i = "+i);
//        // using super to call super class method
//        super.show();
//        // using super to access super class var
//        System.out.println("Super i = " + super.i);
//    }
//}
//public class Super1 {
//    public static void main(String args[])
//    {
//        // create sub class object
//        Two t = new Two();
//        // This will call sub class method only
//        t.show();
//    }
//}

// write a program to show how to override the calculateBill() method of commercial class inside the domestic class
// Write a program to find the areas of Square and Rectangle by deriving them from shape



// Program where  the abstract class Myclass has one abstract method which has got various implementations
// in sub classes
//package main.java;
// All the objects need different implementations of the same method
//abstract class Myclass
//{
//    // this is abstract method
//    abstract void calculate(double x);
//}
//class Sub1 extends Myclass
//{
//    // calculate square value
//    void calculate(double x)
//    {
//        System.out.println("Square = " + (x*x));
//    }
//}
//class Sub2 extends Myclass
//{
//    // calculate square root value
//    void calculate(double x)
//    {
//        System.out.println("Square Root = " + Math.sqrt(x));
//    }
//}
//class Sub3 extends Myclass
//{
//    // calculate cube value
//    void calculate(double x)
//    {
//        System.out.println("Cube = " + (x*x*x));
//    }
//}
//public class Different {
//    public static void main(String args[])
//    {
//        // Create sub class objects
//        Sub1 obj1 = new Sub1();
//        Sub2 obj2 = new Sub2();
//        Sub3 obj3 = new Sub3();
//        // let the objects call and use calculate() method
//        obj1.calculate(3);      // calculate square
//        obj2.calculate(4);      // calculate square root
//        obj3.calculate(5);      // calculate cube value
//    }
//}


// Program to write abstract class with an instance variable rate,
// a concrete method : getRate() and an abstract method : calculateBill()
//package main.java;
// calculating electrycity bill for commercial and domestic plans
//abstract class Plan
//{
//    // take rate as protected to access it in sub classes
//    protected double rate;
//    // accept rate into rate variable. Since rate will change depending on plan,
//    // we declare abstract method
//    public abstract void getRate();
//    // calculate electrycity bill by taking units
//    public void calculateBill(int units)
//    {
//        System.out.print("Bill amount for " + units + " units : ");
//        System.out.println(rate * units);
//    }
//}
//class CommercialPlan extends Plan
//{
//    // store commericial rate as Rs. 5.00 per unit
//    public void getRate()
//    {
//        rate = 5.00;
//    }
//}
//class DomesticPlan extends Plan
//{
//    // store domestic rate as Rs. 2.60 per unit
//    public void getRate()
//    {
//        rate = 2.60;
//    }
//}
//public class Calculate {
//    public static void main(String args[])
//    {
//        // create reference p to abstract class
//        Plan p;
//        // calculate commercial bill for 250 units
//        System.out.println("Commercial Connection : ");
//        p = new CommercialPlan();       //Use reference to refer to sub class
//        // object
//        p.getRate();
//        p.calculateBill(250);
//        // calculate domestic bill for 150 units
//        System.out.println("Domestic Connection : ");
//        p = new DomesticPlan();       //Use reference to refer to sub class
//        // object
//        p.getRate();
//        p.calculateBill(150);
//    }
//}

