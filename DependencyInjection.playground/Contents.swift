import UIKit

//contract
protocol Driving {

    func startDriving()
    func isDriving() -> Bool
    func stopDriving()

}

class BMW: Driving {
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return true
    }
    
    func stopDriving() {
        
    }
}
class Honda: Driving {
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return false
    }
    
    func stopDriving() {
        
    }
}

class SelectedCar {
    
    var car: Driving
    
    init(car: Driving) {
        self.car = car
    }
    
}


let selection1 = SelectedCar(car: BMW())
let selection2 = SelectedCar(car: Honda())
