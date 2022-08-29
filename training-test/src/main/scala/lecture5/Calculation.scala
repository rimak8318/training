package com.springer
package lecture5

sealed trait Calculation

case class Succeed(result:Int) extends Calculation

case class Fail(message:String) extends Calculation

