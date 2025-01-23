func isPrime(_ n: Int) -> Bool {
    guard n >= 1 else { return false }
    if n == 2 || n == 3 { return false }
    for i in 2...Int(Double(n).squareRoot()) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func reverseString(_ string: String) -> String {
    let stringArray = string.split(separator: "")
    let newArray = stringArray.reversed()
    var newString = ""
    for i in newArray {
        newString += i
    }
    return newString
}

func largestOddNumber(_ array: [Int]) -> Int? {
    guard array.isEmpty else { return nil }
    let oddNumber = array.filter { $0 % 2 != 0 }.max()
    return oddNumber
}

func findMiddleValue(_ array: [Int]) -> Int? {
    guard !array.isEmpty else { return nil }
    let newArray = array.sorted()
    let midleIndex = newArray.count / 2
    return newArray[midleIndex]
}

func exercise1() {
    let number = 37
    print(isPrime(number))
    
    let string = "Hoang Thanh"
    print(reverseString(string))
    
    let array = [2, 4, 6, 8, 9, 11, 22]
    print(largestOddNumber(array) ?? "Could not find")
    
    let array2 = [2, 4, 5, 6]
    print(findMiddleValue(array2) ?? "Could not find")
}
