package com.scalatut.day3

object Tut5 extends App {
  def test(str:String) : String = {
    if(str.drop(1).startsWith("yt")) str.replaceFirst("yt", "")
    else str
  }

  println("result: " + test("Scala"))
  println("result: " + test("yytfffg"))
  println("result: " + test("ytswee"))

}
