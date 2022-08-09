package com.scalatut.day3

object Tut9 extends App {
  def test(str:String): Boolean = {
    val cnt=str.count(n => n == 'b')
    cnt >= 2 && cnt <= 4
  }

  println("Result: "+test("bbbdthrb"))
  println("Result: "+test("thrb"))


}
