package com.scalatut.day3

object Tut11 extends App {
  def test(str:String):String={
    str.take(str.length-4)+str.drop(str.length-4).toUpperCase()
  }

  println("Result: "+test("naaasa"))

}
