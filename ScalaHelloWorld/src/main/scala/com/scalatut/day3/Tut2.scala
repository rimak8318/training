package com.scalatut.day3

object Tut2 extends App {
  def test(str:String, n:Int): String =
    {
      str.take(n) + str.drop(n+1)
    }

  println("Result: "+ test("scala",1))
  println("Result: "+ test("Rima",0))
  println("Result: "+ test("Khedekar",3))

}
