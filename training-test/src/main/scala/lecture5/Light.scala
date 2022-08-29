package com.springer
package lecture5

trait Light

case object Green extends Light
case object Red extends Light
case object Yellow extends Light

object signalDemo extends App {
  def signalLight(light: Light): Light = light match {
    case Green => Red
    case Red => Yellow
    case Yellow => Green

  }

  println(signalLight(Green))
  println(signalLight(Red))
  println(signalLight(Yellow))

}













//def matchShape(shape: Shape): String = shape match {
//  case Square(height, width) => "It's a square"
//  case Circle(radius)        => "It's a circle"
//  //no case for Point because it would cause a compiler warning.
//  }