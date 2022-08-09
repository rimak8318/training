//def square(num:Int):String={
//  val sqrt=num*num
//  sqrt.toString
//}
//
//println(square(80))

class Greeter(prefix: String, suffix: String) {
  def greet(name: String): Unit =
    println(prefix + name +suffix)
}

val greeter = new Greeter("Hello, ", "!")
greeter.greet("Scala developer")
