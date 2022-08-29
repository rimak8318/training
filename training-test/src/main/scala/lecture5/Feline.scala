package com.springer
package lecture5

trait Feline {
  def color:String
  def sound:String
}

case class Cat(color: String,food:String,sound:String="meow") extends Feline
case class Lion(color: String,sound:String="roar",maneSize:Int) extends Feline



case class Tigers(color: String,sound:String="roar") extends Feline



case class Panthers(color: String,sound:String="roar") extends Feline {

}