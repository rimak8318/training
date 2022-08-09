package com.scalatut.day5
import io.StdIn._
object UserIp extends App {
  var done=false
  while(!done){
    var name=readLine("Enter the name : ")
    println("Enter student score")
    var score=readDouble()
    println("you received an " + (if(score>=90) "A grade"
    else if(score>=80) "B grade"
    else if(score>=70) "C grade"
    else if(score>=60) "D grade"
    else "Fail"))

    println("Enter true if done , false to cntinue")
    done=readBoolean()
  }

}
