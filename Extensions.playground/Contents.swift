protocol CarDelegate {
    func repair()
}

class Car {
    var model: String
    var color: String
    
    init(_ model: String, _ color: String) {
        self.model = model
        self.color = color
    }
    
    func startEngine() {
        print("Engine started")
    }
    
    func stopEngine() {
        print("Engine stopped")
    }
}

class SportsCar: Car {
    var topspeed: Double
    
    init(model: String, color: String, topspeed: Double) {
        self.topspeed = topspeed
        super.init(model, color)
        
    }
    override func startEngine() {
        print("Sports car engine atarted")
    }
}

var audi = SportsCar(model: "r8", color: "white", topspeed: 230)
audi.startEngine()
audi.stopEngine()

//MARK: - Repair
extension Car: CarDelegate {
    func repair() {
        print("Car repaired")
    }
    
    func accelerate() {
        print("Car accelerated")
    }
}
audi.accelerate()
print("----------------------")

protocol Sound {
    func makeSound()
}

extension Sound {
    func makeSound() {
        print("Woof")
    }
}

class Dog: Sound {
    func getSound() {
        makeSound()
    }
}

var dog = Dog()
dog.getSound()
dog.makeSound()
