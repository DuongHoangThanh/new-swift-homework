class Circle2 {
    var radius: Double = 0  {
        didSet {
            print("New radius: \(radius) - new area: \(area) - new circumference: \(circumference)")
        }
    }
    var diameter: Double {
        return radius * 2
    }
    var area: Double {
        return radius * radius * Double.pi
    }
    var circumference: Double {
        return radius * 2 * Double.pi
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

func exercise4_5() {
    
    // 5:
    let c1 = Circle2(radius: 10)
    let c2 = Circle2(radius: 30)
    let c3 = Circle2(radius: 40)
    
    var circles: [Circle2] = []
    circles.append(contentsOf: [c1, c2, c3])
    
    print("Change radius value of c1:")
    c1.radius = 15
    print("Change radius value of c1:")
    c2.radius = 60
    
}
