package com.springer
package lecture3

case class Cat1(val name:String,val color:String,val food:String)

object chipShop extends App{

//  def willServe(cat: Cat1): Boolean =
//    if(cat.food == "Chips")
//      true
//    else false

  def willServe1(cat: Cat1): Boolean =
    cat match {
      case Cat1(_, _, "Chips") => true
      case Cat1(_, _, _) => false
    }
  val cat=new Cat1("Henderson","Ginger","Chips")
  println(willServe1(cat))
}
