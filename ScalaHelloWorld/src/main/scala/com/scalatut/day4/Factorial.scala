package com.scalatut.day4

object Factorial extends App {
  def test(num:Int): Int ={
    var r=1
    for(i <- 1 to num) {
    r=r*i
    }
    return r


  }

  println("Result: "+test(5))

}
