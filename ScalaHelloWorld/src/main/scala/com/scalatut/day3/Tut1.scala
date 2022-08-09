package com.scalatut.day3

object Tut1 extends App {
  def test(str:String) : String=
  {
    if(str.startsWith("if")) str else "if " + str
  }

  println("Result: "+ test("if else"))
  println("Result: "+ test("else"))
}
