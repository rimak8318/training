package com.springer
package lecture5

import java.util.Date

trait Visitor {
  def id:String
  def createdAt: Date
  def age : Long= new Date().getTime-createdAt.getTime
}

case class Anonymous(id:String,createdAt: Date=new Date()) extends Visitor
case class User(id:String,createdAt: Date=new Date(),email:String) extends Visitor

object VisitorDemo extends App{
  val a=  new Anonymous("123")
  println(a.age)
}


//algebric data type(ADT)
//combination of is-a(sum) and has-a(product)