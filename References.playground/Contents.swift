import UIKit

// MARK: - STRONG & WEAK

class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var john: Person?
var house: Apartment?

john = Person(name: "John")
house = Apartment(unit: "221B")

john!.apartment = house
house!.tenant = john

john = nil
house = nil


// MARK: - UNOWNED

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var alex: Customer?

alex = Customer(name: "Alex")
alex!.card = CreditCard(number: 1234_5678_9012_3456, customer: alex!)


alex = nil


