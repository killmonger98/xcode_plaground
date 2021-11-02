//Dictionary
print("---Dictionary---")
var errorCodes = [Int:String]()

errorCodes = [200 : "Success",
              404 : "Page not found",
              403 : "Forbidden",
              500 : "Server error",
              502 : "Bad gateway",
              504 : "Gateway timeout"]

errorCodes[200]

var fail = errorCodes.filter({$0.key >= 403})
print(fail)
for (key, value) in errorCodes {
    print(key, value)
}
errorCodes.removeValue(forKey: 404)
errorCodes.updateValue("Unauthorised", forKey: 401)
print(errorCodes)
print(errorCodes.capacity)
print(errorCodes.keys)
print(errorCodes.values)



//Set
print("\n---SETS---")
var realnumbers = Set<Int>()
realnumbers = [2, 4, 1, 5, 9, 4]
var evennumbers: Set = [2, 4, 6, 8]
print(realnumbers)
print(realnumbers.count)
realnumbers.insert(8)
print(realnumbers.isEmpty)
realnumbers.remove(9)
print(realnumbers.contains(8))
print(realnumbers.sorted())
print(realnumbers.subtracting(evennumbers))
print(realnumbers.intersection(evennumbers))

//Arrays
print("\n---Array---")
var students = Array<String>()
students = ["Alex", "Jack", "Miller"]
print(students)
//var someInts = [Int](count: 3, repeatedValue: 0)
var teachers = [String](repeating: "Empty", count: 5)
print(teachers)
students += ["Brad"]
students.append("David")
print("\(String(describing: students.first)), \(String(describing: students.last))")
students.insert("John", at: 2)
print(students)
students.remove(at: 2)
print(students)
students.removeLast()
print(students.firstIndex(of: "John"))

if let s = students.randomElement() {
    print(s)
}
//popLast
//removeAll
//max()
for (index, value) in students.enumerated() {
    print("\(index). \(value)")
}
var n = [1, 4, 1, 4, 6, 1]
print(n.sorted())
print(n.min() ?? "Empty")
print(n.max() ?? "Empty")
print(n.endIndex)

//Filter
print("\n---Filter, Map and Reduce---")

struct food {
    var name: String
    var price: Double
    var type: String
}

var apple = food(name: "apple", price: 200, type: "fruit")
var tomato = food(name: "tomato", price: 40, type: "vegitable")
var orange = food(name: "orange", price: 100, type: "fruit")
var cucumber = food(name: "cucumber", price: 50, type: "vegitable")
var berry = food(name: "strawberry", price: 300, type: "fruit")

var foodList: [food] = [apple, tomato, orange, cucumber, berry]

var fruits = foodList.filter({ return $0.type == "fruit" })
print(fruits)
//print(foodList[0].name)

var newPrice = foodList.map({return $0.price + 20})
print(newPrice)

var total = newPrice.reduce(0.0, +)
print(total)

var users: [[String:String]] = [
    ["username": "Usha Kumari", "email": "tuknair.usha@gmail.com", "password": "Ushakumari@3"],
    ["username": "Anil Kumar", "email": "anil@gmail.com", "password": "Anilkumar@3"],
    ["username": "Abhiram Krishna", "email": "abhiram@gmail.com", "password": "Abhiram@3"],
    ["username": "Avani Krishna", "email": "avani@gmail.com", "password": "Avanikrishna@3"],
]

var x = users.filter({ return $0["email"] == "tuknair.usha@gmail.com" && $0["password"] == "Ushakumari@3" })
if x.isEmpty {
    print("Nothing")
} else {
    if let y = x[0]["email"] {
        print(y)
    }
}

//var nameContains = users.filter({return $0["username"]?.contains("Abhi")})
var longestPasswordUsers = users.filter({return $0["password"]!.count > 10})
print(longestPasswordUsers)

//var nameArray =  ["trivan", "mary", "larns", "tria"]
////Inline - replace occurrences of `a` with `ii`
//let resultNames = nameArray.map{$0.replace(of: "a", with: "ii")}


let nameArray: [String?] =  ["trivan", nil,"mary", "larns", "tria"]

//let filteredNilArray = nameArray.compactMap{$0.replacingOccurrences(of: "a", with: "A")}
//print(filteredNilArray)

var numberArr = [4,6,3,1,6,8,9,0,4]
var newArr = numberArr.sorted(by: {$0 > $1})
print(newArr)


class Tester {
    var name: String
    var age: Int
 
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
 
let testers = [
                Tester(name: "John", age: 23), Tester(name: "Lucy", age: 25),
                Tester(name: "Tom", age: 32), Tester(name: "Mike", age: 29),
                Tester(name: "Hellen", age: 19), Tester(name: "Jim", age: 35)
            ]

let results = testers.filter { $0.name.prefix(1) == "J" && $0.age >= 30 }
print(results)
