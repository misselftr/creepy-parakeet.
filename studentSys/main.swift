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


