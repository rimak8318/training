package com.springer
package lecture3


class Adder(amount: Int) {
  def add(in: Int): Int =
    in + amount

  def adjust(adder: Adder)=new Adder(10)
}
//object Count3 extends App {
//
//}
