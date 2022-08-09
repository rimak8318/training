package com.scalatut.day2

object Tut2 extends App {
  var num:Int=101
  if(num>=0 && num<40){
    println("fail")
  }
  else if(num>=40 && num<50){
    println("D Grade")
  }
  else if(num>=50 && num<70){
    println("C Grade")
  }
  else if(num>=70 && num<85){
    println("B Grade")
  }
  else if(num>=85 && num<100){
    println("A Grade")
  }
  else println("Invalid")


}
