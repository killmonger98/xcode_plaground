//import CoreData
//
////Closure or Lambda
//var sum: ((Int, Int) -> Int ) = {
//    a, b in
//    return (a + b)
//}
//
////Function
//func getSum(a: Int, b: Int) -> Int {
//    return (a + b)
//}
//
//print(getSum(a: 6, b: 14))
//print(sum(6,6))
//
//var x = sum
//print(x(2,4 ))
//
//
////Array
//var array: [String] = ["Eraser"]
//var arraycopy = array
//arraycopy[0] = "Sharpner"
//print(array[0])
//print(arraycopy[0])
//
////MutableArray
//var nsarray: NSMutableArray = ["Pen"]
//var nsarraycopy = nsarray
//nsarraycopy[0] = "Pencil"
//print(nsarray[0])
//print(nsarraycopy[0])
//
////trailing closure
//func getData(completion: ((String) -> Void)) {
//              completion("Hello")
//}
//
//getData(completion: {string in
//    print(string)
//})



// MARK: - CLOSURES


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

print(strings)


// returning closure
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()

let incrementByTwo = makeIncrementer(forIncrement: 2)

incrementByTwo()
incrementByTwo()
incrementByTwo()
    
    
print("\n")

let sayHello: () -> Void = {
    print("Hello")
}

sayHello()

// Closure take one parameter and return 1 parameter
let value: (Int) -> Int = { (value1) in
    return value1
}

print(value(5))

// Closure take two parameter and return 1 parameter
let add: (Int, Int) -> Int = { (value1, value2) in
    return value1 + value2
}

print(add(5, 4))

// Closure take two parameter and return String parameter
let addValues: (Int, Int) -> String = { (value1, value2) -> String in
    return String("Sum is: \(value1 + value2)")
}

print(addValues(5, 4))
