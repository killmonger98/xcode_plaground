import UIKit

protocol SendDataDelegate: class {}

class SenderVC {
    
    weak var delegate: SendDataDelegate?
    
    deinit {
        print("Deinitialized.")
    }
}

class ReceiverVC: SendDataDelegate {
    
    lazy var senderVC: SenderVC = { () -> SenderVC in
        let vc = SenderVC()
        vc.delegate = self
        return vc
    }()
    
    deinit {
        print("Deinitialized.")
    }
}


var receiverVC: ReceiverVC? = ReceiverVC()
receiverVC?.senderVC

receiverVC = nil

