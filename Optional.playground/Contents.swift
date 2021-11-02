//import UIKit

//Classes and Objects
class Student {
    var firstName: String
    var lastName: String
    init(_ firstName: String, _ lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

var S1 = Student("Abhiram", "Ambadi")
print(S1.fullName)

//Optional
var optionalNumber: Int?
optionalNumber = 6

//if let
if let value = optionalNumber {
    print("Optional number is not nil. Value is \(value)")
} else {
    print("Optional number is nil")
}

//guard
func squareNumber(number: Int?) {
    guard let n = number else {
        print("Exiting function")
        return
    }
    print("Square: ",(n*n))
}

squareNumber(number: optionalNumber)

//forced unwrapping
var forcedNumber = optionalNumber!

//optional chaining

struct Device {
    var name: String
    var price: Double
    var type: String
}


var myiPhone: Device?
//myiPhone = Device(name: "6", price: 24000, type: "space grey")

var totalPrice = myiPhone?.price

if let t = totalPrice {
    print(160.50 + t)
} else {
    print("Device does not exist")
}

//optional binding
struct Parts {
    var name: String?
    var price: Double?
}

class ComputerParts {
    
    func findParts(name: String) -> Parts? {
        if(name == "keyboard") {
            return Parts(name: "any-keyboard", price: 250)
        } else if (name == "mouse") {
            return Parts(name: "any-mouse", price: 200)
        }
        return nil
    }
}


let objComputer = ComputerParts()
if let p = objComputer.findParts(name: "keyboard") {
    if let price = p.price {
        print(price)
    }
}

if let price = objComputer.findParts(name: "keyboard")?.price {
        print(price)
}
