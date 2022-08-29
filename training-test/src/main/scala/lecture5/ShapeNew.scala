package com.springer
package lecture5

trait ShapeNew {
  def sides:Int
  def perimeter:Double
  def area:Double
}

trait RectangleNew extends ShapeNew{
  def length:Double
  def breadth:Double
}

case class CircleNew(radius:Double) extends ShapeNew{
  val sides=1
  val area=Math.PI*radius*radius
  val perimeter=2*Math.PI*radius
}

case class SquareNew(side:Double) extends RectangleNew{
  val length=side
  val breadth=side

  override def sides: Int = 4

  override def perimeter: Double = 4*side

  override def area: Double = side*side
}
