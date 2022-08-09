package com.scalatut.day2

object Tut3 extends App {
  var result=search("hii")

  def search(a:Any):Any=a match {
    case 1 => println("one")
    case "two" => println("Two")
    case "one" => println("One")
    case "Hello" => println("hello")
    case _ => println("invalid")
  }

}
