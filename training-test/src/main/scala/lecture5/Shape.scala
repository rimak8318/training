package com.springer
package lecture5

trait Shape {
  def sides:Int
  def perimeter:Double
  def area:Double
}

case class Circle(radius:Double) extends Shape{
  val sides=1
  val perimeter=2*Math.PI*radius
  val area=Math.PI*radius*radius
}

case class Rectangle(length:Double,breadth:Double) extends Shape{
  val sides=4
  val perimeter=2*(length+breadth)
  val area=length*breadth
}

case class Square(side:Double) extends Shape{
  val sides=4
  val perimeter=4*side
  val area=side*side
}

object shapes extends App{
  println(Circle(3).area)
  println(Circle(3).perimeter)
  println(Rectangle(3,4).area)
  println(Rectangle(3,4).perimeter)
  println(Square(3).area)
  println(Square(3).perimeter)
}