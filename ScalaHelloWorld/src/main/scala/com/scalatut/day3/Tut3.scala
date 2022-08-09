package com.scalatut.day3

object Tut3 extends App {
  def test(x:Int,y:Int) : Boolean ={
    x==30  || y==30 || x+y==30
  }

  println("Result: "+test(0,25))
  println("Result: "+test(30,25))
  println("Result: "+test(5,15))
}
