package com.springer
package lecture5

sealed trait Shape1

case class Circle1(radius:Double) extends Shape1


case class Rectangle1(length:Double,breadth:Double) extends Shape1

case class Square1(side:Double) extends Shape1

object draw {
  def apply(shape1: Shape1):String= shape1 match{
    case Circle1(radius) => s"a circle of ${radius}cm"

    case Rectangle1(length,breadth) => s"a rectangle of length ${length}cm and breadth ${breadth}cm"

    case Square1(side) => s"a square of side ${side}cm"
  }

}

object shapes1 extends App {
  println(draw(Circle1(4)))
  println(draw(Rectangle1(5,6)))
  println(draw(Square1(8)))
}