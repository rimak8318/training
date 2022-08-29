package com.springer
package lecture3


class Counter(val counter:Int) {
  def inc():Int={
    counter+1
  }
  def dec():Int={
    counter-1
  }

}

//class Adder(amount: Int) {
//  def add(in: Int) = in + amount
//
//  def adjust(adder: Adder)=new Counter(adder.add(in = 10))
//}

object Count extends App{
  val cnt=new Counter(10)
  val ad=new Adder(100)
  println(cnt.inc())
  println(cnt.dec())
  //println(ad.add(200))
}

