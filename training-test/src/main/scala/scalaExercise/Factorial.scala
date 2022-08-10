package com.springer
package scalaExercise

object Factorial extends App {
  def fact(n:Int):Int={
    if(n==0) 1
    else
      fact(n-1)*n
  }

  println("Factorial : "+fact(5))

}
