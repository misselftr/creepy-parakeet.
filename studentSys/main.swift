import Darwin
import Foundation
import CoreGraphics

let GENDER = ["female","male"]

class Student {
    var name: String = ""
    var age: Int = 0
    var avgGrade: Double = 0
    var gender: Int
    
    init(fullName: String, studentAge: Int, gender:Int){
        self.name=fullName
        self.age=studentAge
        self.gender=gender
    }
    
    func about(){
        if (avgGrade==0)
        {
            println("\(name) is \(age)")
        }
        else
        {
        println("\(name) is \(age) and has the average \(avgGrade)")
        }
    }
    
    // aşağıdaki sistem birşey return ettiği için daha verimli çalışmasını sağlar
    
    func desc() -> String {
        if (avgGrade>0)
        {
            return "\(name) is \(age) and has the average \(avgGrade)"
        }
        else
        {
            return "\(name) is \(age)"
        }
    }
    
    func getGender() -> String {
        return GENDER[gender]
        }
    }
println("Hey!")

var baskasi = Student(fullName: "Selda", studentAge: 54, gender: 0)

var biri = Student(fullName:"Denizer", studentAge:55, gender:1)
biri.about()
biri.avgGrade=77
biri.about()

// daha verimli çalışmasını sağlayan kodun devamı
println(biri.desc())



println()

/*
var y: Int = 80
for i in 0..<50{
    y = y+i
}
/////////
y += 1000
/////////

println(y)
*/


class Girl: Student {
   // var  gender: Int // ilk değer atanması şart bir yolu şu: = 0 diğeri aşağıdaki init fonksiyonu
    
    init(fullName: String, studentAge: Int) {
        super.init(fullName: fullName, studentAge: studentAge, gender:0)
    }
}

var bir_kiz = Girl (fullName: "Sevgi", studentAge: 30)
bir_kiz.about()
//println(bir_kiz.gender)
println((bir_kiz.getGender()))
println(biri.getGender())
println("\(biri.name) is \(biri.age) and is a \(biri.getGender())")

/*



*/
let k:Int = 1000000
let c:Double = 1000000.00
var xkoor: Double = 1
var ykoor: Double = 1
var pisagor: Double = 1
var inCount: Double = 0
var perc:Double=1


public extension Double {
    public static func random() -> Double {
        return Double(arc4random()) / 0xFFFFFFFF
    }
    
    public static func random(#min: Double, max: Double) -> Double
    {
        return Double.random() * (max - min) + min
    }
}

for i in 1..<k
{
    
    xkoor = Double.random(min: 1.00, max: 5.00)
   // println("\(xkoor) x noktanın uzaklığıdır.")
    ykoor = Double.random(min: 1.00, max: 5.00)
  //  println("\(ykoor) y noktanın uzaklığıdır.")
    pisagor = sqrt((xkoor*xkoor)+(ykoor*ykoor))
   // println("\(pisagor) noktanın uzaklığıdır.")
    if pisagor < 5
    {
        inCount++
    }
}
println("\(inCount) tane nokta dairenin içindedir.")
perc = inCount / c
println("\(perc) içindekilerin toplama oranıdır.")





