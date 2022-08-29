package com.springer
package lecture3

object DirectorsAndFilms extends App {
  class Director(val firstname:String,val lastname:String,val yearOfBirth:Int){
    def name():String={
      firstname+" "+lastname
    }

    def equals(director: Director):Boolean={
      director match{
        case director: Director => this.firstname == director.firstname && this.lastname==director.lastname && this.yearOfBirth == director.yearOfBirth
        case _ => false
      }
    }
  }

  class Film(val name:String,val yearOfRelease:Int,val imdbRating:Double,director: Director) {
    def directorsAge(): Int = yearOfRelease - director.yearOfBirth

    def isDirectedBy(director: Director): Boolean =
      if (this.director.equals(director)) true else false
  }

  val dir=new Director("sanjay","Bhansali",1970)
  val dir1=new Director("sanjay","Bhansali",1970)
  println(dir.name())


  val direct=new Film("Ramleela",2017,7.8,dir)
  println(direct.isDirectedBy(dir))
  println(direct.directorsAge())
  println(dir.equals(dir1))




}
