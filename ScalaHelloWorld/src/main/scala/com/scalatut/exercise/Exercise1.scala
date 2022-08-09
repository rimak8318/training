package com.scalatut.exercise

object Exercise1 extends App {
  def square(x:Double)=x*x
  def cube(x:Double)=x*square(x)

  println("Result : "+square(5))
  println("Result : "+cube(5))

  def square(x:Int)=x*x
  def cube(x:Int)=x*square(x)

  println("Result : "+square(6))
  println("Result : "+cube(6))


}
