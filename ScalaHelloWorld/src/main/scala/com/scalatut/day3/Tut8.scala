package com.scalatut.day3

object Tut8 extends App {
  def test(x:Int,y:Int) : Boolean = {
    List(x,y).forall{m => m>=40 && m<=50}  || List(x,y).forall{n => n>=50 && n<=60}
  }

  println("Result: " + test(67,34))
  println("Result: " + test(40,45))
  println("Result: " + test(57,54))



}
