package com.scalatut.day6

object ArrayOp extends App {
  def avg(a:Array[Int]):Double={
    var sum=0
    for(v <- a) sum+=v
    sum/a.length
  }

  var min= (a:Array[Int]) => {
    var m = a(0)
    for(v<-a) if(v<m) m=v
    m
  }

  var max= (a:Array[Int]) => {
    var m = a(0)
    for(v<-a) if(v>m) m=v
    m
  }

  var numArray = Array(10, 20, 37,8,1,45)
  println("Average : "+avg(numArray))
  println("minimun : "+min(numArray))
  println("maximum : "+max(numArray))


}
