import Foundation
//base class
class Car {
    func startEngine() {
        print("Engine Started")
    }
    func stopEngine() {
        print("Engine Stopped")
    }
    func accelerate() {
        print("Car is accelerating")
    }
    func decelerate() {
        print("Car is decelerating")
    }
}

//sub class
class Audi: Car {
    override func accelerate() {
        print("Audi car is accelerating")
    }
}

var r8 = Audi()
r8.accelerate()
r8.startEngine()

protocol Engine {
    func startEngine()
    func stopEngine()
}

@objc protocol speedControl {
    var topspeed: Double {get set}
    func accelerate()
    func decelerate()
    @objc optional func Crash()
}

protocol Plane: Engine, speedControl {
    func ignition()
}

extension Plane {
    func ignition() {
        
    }
}

class Boeng: Plane {

    var topspeed: Double
    
    init(topspeed: Double) {
        self.topspeed = topspeed
    }
    
//    func Crash() {
//        print("Plane crash")
//    }
//    func ignition() {
//        print("Boeng started ignition")
//    }
    
    func startEngine() {
        print("Boeng started engine")
    }
    
    func stopEngine() {
        print("Boeng stopped engine")
    }
    
    func accelerate() {
        print("Boeng accelerating")
    }
    
    func decelerate() {
        print("Boeng decelerating")
    }
}

var c787 = Boeng(topspeed: 687)
c787.ignition()
//c787.Crash()
