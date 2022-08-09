package com.scalatut.day6

import com.scalatut.day6.BankAcc.Bank.accNum

object BankAcc extends App {
  var b1=new Bank("Rima",2000)
  var b2=new Bank("Arya",5000,'s')
  List(b1,b2).foreach(println)

  class Bank(name:String, balance:Double,typeOfAcc:Char ='c'){

    var accNumber=Bank.nextAccNum()
    override def toString: String = "Client name: "+name+ "\nbalance: "+balance+
      (if(typeOfAcc == 'c') "\nCurrent" else "\nSavings") + "\nAccount number: "+accNumber + "\n"+"*"*30
  }

  object Bank{
    var accNum=0
    def nextAccNum()={accNum += 1
      accNum
    }

  }

}
