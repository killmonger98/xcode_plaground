import UIKit

print("Hello")
if let filename = Bundle.main.path(forResource: "input", ofType: "txt") {
    do {
        let str = try String(contentsOfFile: filename)
        print(str)
    } catch {
        print("The file could not be loaded")
    }
}

let filename = "somefile.txt"
//let str = try! String(contentsOfFile: filename)

let stringPath = Bundle.main.path(forResource: "input", ofType: "txt")
print(stringPath)
let urlPath = Bundle.main.url(forResource: "input", withExtension: "txt")

// throwing function
func update1(name: String, forUserIdentifier userIdentifier: String) throws {
    print(name)
    // The throws keyword makes that this method cán throw an error
}
try update(name: "Antoine van der Lee", forUserIdentifier: "AEDKM1323")




// init throws
struct User {

    enum ValidationError: Error {
        case emptyName
        case nameToShort(nameLength: Int)
    }

    let name: String

    init(name: String) throws {
        guard !name.isEmpty else {
            throw ValidationError.emptyName
        }
        guard name.count > 2 else {
            throw ValidationError.nameToShort(nameLength: name.count)
        }
        self.name = name
    }



}

let user = try User(name: "Antoine van der Lee")

do {
    let user = try User(name: "")
    print("Created user with name \(user.name)")
} catch {
    print("User creation failed with error: \(error)")
}



func fetchUser(for identifier: String) throws -> User {
    // Fetches the user from the database
    return try User(name: "h")
}

func update(name: String, forUserIdentifier userIdentifier: String) throws {
    guard !name.isEmpty else {
        throw User.ValidationError.emptyName
    }
    var user = try fetchUser(for: userIdentifier)

}


do {
    try update(name: "Antoine van der Lee", forUserIdentifier: "AEDKM1323")
} catch User.ValidationError.emptyName {
    // Called only when the `User.ValidationError.emptyName` error is thrown
} catch User.ValidationError.nameToShort(let nameLength) where nameLength == 1 {
    // Only when the `nameToShort` error is thrown for an input of 1 character
} catch is User.ValidationError {
    // All `User.ValidationError` types except for the earlier catch `emptyName` error.
} catch {
    // All other errors
}

func myMethod()  {
    print("Message one")
    print("Message two")
    print("Message three")
    defer {
        print("defered block 3")
    }
    defer {
        print("defered block 2")
    }
    defer {
        print("defered block 1")
    }
    print("Message four")
    print("Message five")
}

myMethod()
