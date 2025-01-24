class SmartPhone {
    var brand: String
    var model: String
    var batteryLevel: Int {
        didSet {
            if batteryLevel < 20 {
                print("Low battery, please charge immediately.")
            }
            if batteryLevel == 100 {
                print("The batery is full, please unplug the charger.")
            }
        }
    }
    
    var isLowBattery: Bool {
        return batteryLevel < 20
    }
    
    init(brand: String, model: String, batteryLevel: Int) {
        self.brand = brand
        self.model = model
        self.batteryLevel = batteryLevel
    }
}

func exercise4_10() {
    
    let sm1 = SmartPhone(brand: "Apple", model: "IP 16 promax", batteryLevel: 100)
    let sm2 = SmartPhone(brand: "Apple", model: "IP 15 promax", batteryLevel: 100)
    let sm3 = SmartPhone(brand: "Apple", model: "IP 14 promax", batteryLevel: 100)
    
    var smartPhones: [SmartPhone] = []
    smartPhones.append(contentsOf: [sm1, sm2, sm3])
    
    sm1.batteryLevel = 15
    sm2.batteryLevel = 10
}
