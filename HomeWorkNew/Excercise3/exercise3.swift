struct Time {
    var hours: Int
    var minutes: Int
    var seconds: Int
    
    func convert() -> Int {
        return (hours * 60 * 60) + (minutes * 60) + seconds
    }
}

struct Book {
    var title: String
    var author: String
    var yearPublished: Int
    
    func check() -> Bool {
        return yearPublished >= 2001 && yearPublished <= 2010
    }
}

struct Student {
    var name: String
    var grades: [Double]
    
    mutating func addGrade(grade: Double) {
        grades.append(grade)
    }
    
    func averageGrade() -> Double {
        return grades.reduce(0.0, +) / Double(grades.count)
    }
    
    func isGraduated() -> Bool {
        return averageGrade() >= 5
    }
}

struct Circle {
    var radius: Double
    
    func circumference() -> Double {
        return radius * 2 * Double.pi
    }
    
    func area() -> Double {
        return radius * radius * Double.pi
    }
}

func exercise3() {
    
    // 1:
    let time = Time(hours: 0, minutes: 1, seconds: 30)
    print(time.convert())
    
    // 2:
    let book = Book(title: "Dac Nhan Tam", author: "Hoang Thanh", yearPublished: 2009)
    print(book.check())
    
    // 3:
    var std = Student(name: "Hoang Thanh", grades: [])
    std.addGrade(grade: 8.5)
    std.addGrade(grade: 9)
    print(std.averageGrade())
    
    // 4:
    let cirle = Circle(radius: 20)
    print(cirle.circumference())
    print(cirle.area())
    
}
