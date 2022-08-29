package com.springer
package lecture3

class Counter1(val counter:Int) {
  def inc(amount:Int=1):Int={
    counter+amount
  }
  def dec(amount:Int=1):Int={
    counter-amount
  }

}
object Count2 extends App {
  val cnt=new Counter1(10)
  println(cnt.inc())
  println(cnt.dec())
}
