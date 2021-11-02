import UIKit

var str = "Hello, playground"
var x = 2.627802

print(type(of: x))

/// basic class with model and color as attributes
class Car {
    var model: String
    var color: String
    
    init(_ model: String, _ color: String) {
        self.model = model
        self.color = color
    }
}

var bmw = Car("X5","blue")
print(bmw.color)

var demobmw = bmw

demobmw.color = "red"

print(demobmw.color)
print(bmw.color)


/// basic struct with model and color as attributes
struct Plane {
    var model: String
    var color: String
    
    init(_ model: String, _ color: String) {
        self.model = model
        self.color = color
    }
}

var boeng = Plane("727","white")
print(boeng.color)

var demoboeng = boeng

demoboeng.color = "grey"

print(demoboeng.color)
print(boeng.color)


var number = [1,2,3,4,5,6]

for i in number {
    print(i)
//    print(Int.random(in: 1...100))
}


//Optionals
var name: String? = "Abhiram"
name = nil

//Unwrapping
let a: Int? = 6
let b: Int? = 4

if let value1 = a {
    if let value2 = b {
        print(value1 + value2)
    }
}

print(name?.count as Any)

//Dictionary

var array: [Any] = ["Abhiram", 6, 10.2, true]
var car: [Int: String] = [1 : "bmw", 2 : "honda"]
for (_, value) in car {
    print(value)
}

//Structs
struct User {
    var name: String
    var phone: Int
    var email: String
}

var user1  = User(name: "Abhiram", phone: 9074395665, email: "abhiramk@qburst.com")
display(user1)

func display(_ u: User) {
    print(u.email)
}


var newSet: Set = [1, 2, 3, 4]
print("   ")
print(newSet)
