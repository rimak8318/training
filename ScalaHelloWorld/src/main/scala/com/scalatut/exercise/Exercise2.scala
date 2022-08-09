package com.scalatut.exercise

import org.w3c.dom.css.Counter

object Exercise2 extends App {
  class Counter(val count:Int){
    def dec: Counter = dec()
    def inc: Counter = inc()
    def dec(amount: Int = 1): Counter = new Counter(count - amount)
    def inc(amount: Int = 1): Counter = new Counter(count + amount)

    println(new Counter(10).inc.inc(10).count)

  }


}
