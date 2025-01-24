class Employee {
    var name: String
    var baseSalary: Double
    
    var bonus: Double {
        didSet {
            print("Total salary of \(name) has been changed: \(totalSalary)")
        }
    }
    
    var totalSalary: Double {
        return baseSalary + bonus
    }
    
    init(name: String, baseSalary: Double, bonus: Double) {
        self.name = name
        self.baseSalary = baseSalary
        self.bonus = bonus
    }
}

func exercise4_6() {
    
    // 6:
    let em1 = Employee(name: "Hoang Thanh1", baseSalary: 1000, bonus: 100)
    let em2 = Employee(name: "Hoang Thanh2", baseSalary: 1000, bonus: 200)
    let em3 = Employee(name: "Hoang Thanh3", baseSalary: 1000, bonus: 300)
    
    var employees: [Employee] = []
    employees.append(contentsOf: [em1, em2, em3])
    
    // Update salary
    em1.bonus = 500
    em3.bonus = 50
    
    // Check total salary
    print("Total salary of \(em1.name) is: \(em1.totalSalary)")
    print("Total salary of \(em2.name) is: \(em2.totalSalary)")
}
