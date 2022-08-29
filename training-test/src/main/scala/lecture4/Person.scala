package com.springer
package lecture4

class Person(val name:String,val age:Int){
  override def toString:String=s"Person($name,$age)"

  def copy(newName: String = name, newAge: Int = age): Person =
    new Person(newName, newAge)

  override def equals(person: Any): Boolean = person match {
    case person: Person =>
      this.name == person.name && this.age == person.age
    case _ => false
  }

  override def hashCode(): Int = if (name eq null) age else name.hashCode + 31 * age

}

object PersonDemo extends App{
  val a=new Person("Rima",25)
  val b=new Person("Rima",25)
  val c=a.copy()
  println("copied object :"+c)
  println(a.equals(b))
  println(a.hashCode())
}
