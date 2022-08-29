package com.springer
package lecture2

object partialFun extends App{

    val a  = new PartialFunction[String, String] {
      override def isDefinedAt(x: String) = x.equals("Hi") || x.equals("GM") || x.equals("How are you?") || x.equals("Springer")
      override def apply(x:String) =  x match{
        case "Hi"  => "Hello.."
        case "GM" => "Good Morning"
        case "How are you?" => "I'm good"
        case "Springer" => "Welcome to springer Nature"

      }
    }
    println(a("Hi"))
    println(a("GM"))
    println(a("How are you?"))
    println(a("Springer"))

}
