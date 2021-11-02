import UIKit

struct UserInfo {
    var firstName: String
    var lastName: String
}

var objUserInfo: UserInfo?

class Singleton {
    
    static let shared = Singleton()
    private init() {}
    
    func getUserInfo() -> UserInfo {
        guard let info = objUserInfo else {
            return UserInfo(firstName: "Unkonwn", lastName: "Unknown")
        }
        return info
    }
    
    func updateUserInfo(updatedUserInfo: UserInfo) {
        objUserInfo = updatedUserInfo
    }
    
}

class User {
    
    func getUser() -> UserInfo {
        return Singleton.shared.getUserInfo()
    }
    
    func updateUserInfo() {
        Singleton.shared.updateUserInfo(updatedUserInfo: UserInfo(firstName: "Abhiram", lastName: "Krishna"))
    }
    
}

let objUser = User()
objUser.getUser()
objUser.updateUserInfo()
objUser.getUser()
