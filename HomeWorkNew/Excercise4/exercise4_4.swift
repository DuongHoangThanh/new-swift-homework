
class Student2 {
    var name: String
    var mathScore: Double {
        didSet {
            print("New average score of \(name) is: \(averageScore)")
        }
    }
    
    var englishScore: Double {
        didSet {
            print("New average score of \(name) is: \(averageScore)")
        }
    }
    
    var scienceScore: Double {
        didSet {
            print("New average score of \(name) is: \(averageScore)")
        }
    }
    
    var averageScore: Double {
        return (mathScore + englishScore + scienceScore) / 3
    }
    
    init(name: String, mathScore: Double, englishScore: Double, scienceScore: Double) {
        self.name = name
        self.mathScore = mathScore
        self.englishScore = englishScore
        self.scienceScore = scienceScore
    }
}

class Student2Manager {
    var students: [Student2] = []
    
    func addStudent(name: String, ma: Double, en: Double, sc: Double) {
        let student = Student2(name: name, mathScore: ma, englishScore: en, scienceScore: sc)
        students.append(student)
        print("Student \(student.name) has been added.")
    }
}

func exercise4_4() {
    
    // 3.2:
    let std1 = Student2(name: "Hoang Thanh1", mathScore: 9, englishScore: 9, scienceScore: 9)
    let std2 = Student2(name: "Hoang Thanh2", mathScore: 9.5, englishScore: 9, scienceScore: 9.5)
    let std3 = Student2(name: "Hoang Thanh3", mathScore: 8.5, englishScore: 10, scienceScore: 9)
    
    // add:
    var students: [Student2] = []
    students.append(contentsOf: [std1, std2, std3])
    
    // update:
    std1.mathScore = 10
    std2.mathScore = 9.9
    
    // check:
    print("Average score of std1: \(std1.averageScore)")
    print("Average score of std2: \(std2.averageScore)")
    
}
