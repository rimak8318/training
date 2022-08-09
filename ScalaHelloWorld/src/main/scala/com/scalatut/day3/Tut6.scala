package com.scalatut.day3

object Tut6 extends App {
  def test(a:Int,b:Int,c:Int):Int={
    List(a,b,c).max
  }

  println("Result: "+ test(23,89,56))

}
