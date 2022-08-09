package com.scalatut.day5
import io.Source._
object ReadFile extends App {
  val filename= "src/main/scala/rainbow.txt"
  for(line <- fromFile(filename).getLines()){
    println(line)
  }
}
