package com.scalatut.day3

object Tut4 extends App {
  def test (str:String) : String = {
    if(str.length < 3) str * 3
    else str.substring(0,3) + str + str.substring(0,3)
  }

  println("Result: "+test("scala"))
  println("Result: "+test("d"))
  println("Result: "+test("gf"))


}
