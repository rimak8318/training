package com.scalatut.day5

object HigherOrder extends App {
  val double = (i:Int) => i*2
  def higherOrder(x:Int, y:Int=>Int) = y(x)
  println("Result: "+higherOrder(6,double))

}
