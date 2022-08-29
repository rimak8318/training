package com.springer
package lecture3


case class Counter2(count: Int = 0) {
  def inc = {
    count + 1
  }

  def dec = {
    count - 1
  }

}
object countWithCase extends App {
  val cnt=new Counter2()
  println(cnt.inc)
  println(cnt.dec)

}
