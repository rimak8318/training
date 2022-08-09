package com.scalatut.day3

object Tut10 extends App {
  def test(a:Int,b:Int):Int={
    val maximum=List(a,b).max
    if(maximum>=20 && maximum<=30 ) maximum else 0
  }

  println("Result: "+test(10,19))
  println("Result: "+test(27,20))


}
