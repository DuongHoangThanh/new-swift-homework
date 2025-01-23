func average(_ array: [Int]) -> Double {
    guard !array.isEmpty else { return 0.0 }
    var sum = 0
    for i in array {
        sum += i
    }
    return Double(sum) / Double(array.count)
}

func printString(_ array: [String]) {
    for i in array {
        if i.count >= 3 {
            print(i)
        }
    }
}

func sum(_ array: [Double]) -> Double {
    var sum = 0.0
    for i in array {
        if i < 0 {
            sum += i
        }
    }
    return sum
}

func concatString(_ array: [String]) -> String {
    var result = ""
    for i in array {
        result += i
    }
    return result
}


func exercise2() {
    
    let array = [1, 3, 5, 6, 2]
    print(average(array))
    
    let array2 = ["Duong","Hoang", "Thanh", "DN", "QN"]
    printString(array2)
    
    let array3: [Double] = [1, -2, -5, 9, -4, -7, 5]
    print(sum(array3))
    
    let array4 = ["Duong", "Hoang", "Thanh"]
    print(concatString(array4))
}
