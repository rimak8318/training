package com.scalatut.exercise

object Ex4 extends App {
  class Adder(amount:Int){
    def add(in:Int)=amount+in
    def inc= new Adder(amount+1)
    def dec= new Adder(amount-1)
  }

  val total=new Adder(10)
  println(total.add(10))
  println(total.inc)
  println(total.dec)


}
