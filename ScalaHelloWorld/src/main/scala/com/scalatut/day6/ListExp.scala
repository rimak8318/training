package com.scalatut.day6

object ListExp extends App {
  var l=List(1.2,3,'d')
  println(l)
  var l2=1::2::3::4::5::Nil
  println(l2)
  var l3=List.range(10,15)
  println(l3)
  var l4=l:::l3
  println(l4)

  var sum=0
  l3.foreach(sum+=_)
  println("sum: "+sum)





}
