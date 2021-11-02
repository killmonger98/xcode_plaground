//import UIKit

//this is a test file

print("Hello World")

var str = "Hello, playground"
var x: Int = 6
var y: Int = 26
print(y + x)


x  = 6
print(x)

//basic function to say hello
func sayHello() {
    print("Hello there!")
}

sayHello()

//function to print first and last name
func sayHelloTo(_ firstname: String, _ lastname: String) {
    print("First name:", firstname)
    print("Last name: \(lastname)")
}

//sayHelloTo(firstname: "Abhiram", lastname: "Krishna")
sayHelloTo("Abhi", "Ram")

//function to return square of a number
func getSquare(_ num: Int) -> Int {
    return num * num
}
print(getSquare( 4))


//this is a class
class Student {
    var name = ""
    var age = 0
    var course = "BTech"
    func getName() { 
        print(name)
    }
    
    func getAge() {
        print(age)
    }
}

var newStudent = Student()
newStudent.name = "Abhiram"
print(newStudent.course)
newStudent.getName()
