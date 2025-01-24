class Athlete {
    var name: String
    var distanceRun: Double {
        didSet {
            print("New average speed is: \(averageSpeed)")
        }
    }
    var timeTaken: Double {
        didSet {
            print("New average speed is: \(averageSpeed)")
        }
    }
    var averageSpeed: Double {
        return distanceRun / timeTaken
    }
    
    init(name: String, distanceRun: Double, timeTaken: Double) {
        self.name = name
        self.distanceRun = distanceRun
        self.timeTaken = timeTaken
    }
}

func exercise4_12() {
    
    let a1 = Athlete(name: "Hoang Thanh1", distanceRun: 50, timeTaken: 3.5)
    let a2 = Athlete(name: "Hoang Thanh2", distanceRun: 100, timeTaken: 2.5)
    let a3 = Athlete(name: "Hoang Thanh3", distanceRun: 150, timeTaken: 5.5)
    
    var athletes: [Athlete] = []
    athletes.append(contentsOf: [a1, a2, a3])
    
    a1.distanceRun += 50
    a2.distanceRun += 70
    
}
