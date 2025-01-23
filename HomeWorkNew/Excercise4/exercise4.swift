class Teacher {
    var name: String
    var subject: String
    var experienceYears: Int {
        didSet {
            print("Experience has been changed! \nOldExp: \(oldValue) => NewExp: \(experienceYears)")
        }
    }
    
    init(name: String, subject: String, experienceYears: Int) {
        self.name = name
        self.subject = subject
        self.experienceYears = experienceYears
    }
    
    func addExp(y: Int) {
        experienceYears += y
    }
    
    func showInfo() {
        print("- Teacher name: \(name), subject: \(subject), experience: \(experienceYears)")
    }
}

struct Course {
    var courseName: String
    var students: [Student]
    
    func showInfoCourse() {
        for i in students {
            print("Student: [\(i.name)]")
        }
    }
}

class School {
    static var schoolCount: Int = 0
    var name: String
    var courses: [Course]
    
    init(name: String, courses: [Course]) {
        self.name = name
        self.courses = courses
        School.schoolCount += 1
    }
    
    func addCourse(course: Course) {
        courses.append(course)
        course.showInfoCourse()
    }
    
    static func showCountSchool() {
        print("School count: \(School.schoolCount)")
    }
}

class University {
    static var totalStudents: Int = 0
    var students: [Student] = [] {
        didSet {
            University.totalStudents += 1
        }
    }
    
    var graduatedStudents: [Student] {
        return students.filter { $0.isGraduated() }
    }
    
    func addStudent(student: Student) {
        students.append(student)
    }
}

func exercise4() {
    
    // 1:
    let tc = Teacher(name: "Hoang Thanh", subject: "Math", experienceYears: 3)
    tc.addExp(y: 2)
    tc.showInfo()
    
    // 2:
    let std1 = Student(name: "Duong", grades: [8.5])
    let std2 = Student(name: "Hoang", grades: [9.5])
    let std3 = Student(name: "Thanh", grades: [8.5])
    let std4 = Student(name: "John", grades: [4.5])
    
    let c1 = Course(courseName: "Math", students: [std1, std2, std3])
    let c2 = Course(courseName: "Physic", students: [std1, std3])
    
    let s1 = School(name: "DP1", courses: [c1])
    s1.addCourse(course: c2)
    School.showCountSchool()
    
    // 3:
    let u1 = University()
    u1.addStudent(student: std1)
    u1.addStudent(student: std2)
    u1.addStudent(student: std4)
    print("Total students: \(University.totalStudents)")
    print("Graduates Student: \(u1.graduatedStudents.count)")

}
