package com.springer
package lecture5

sealed trait DivisionResult

case class Finite(value: Int) extends DivisionResult
case object Infinite extends DivisionResult

object divide{
  def apply(a:Int,b:Int) : DivisionResult ={
    if (b==0) Infinite
    else Finite(a/b)
  }

  divide(1, 0) match {
    case Finite(value) => s"Finite: ${value}"
    case Infinite => s"Infinite"
  }
  def main(args: Array[String]): Unit = {
    println(divide(4, 1))
    println(divide(4, 0))
    println(divide(9, 2))
    println(divide(19, 0))
  }
}
