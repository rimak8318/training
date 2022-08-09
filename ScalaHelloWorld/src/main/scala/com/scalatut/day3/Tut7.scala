package com.scalatut.day3

object Tut7 extends App {
  def test(x:Int,y:Int) : Int = {
    val x_abs=Math.abs(x-100)
    val y_abs=Math.abs(y-100)
    if(x_abs==y_abs) 0
    else if(x_abs<y_abs) x
    else y

  }

  println("result: "+test(56,89))
  println("result: "+test(56,56))
  println("result: "+test(99,89))


}
