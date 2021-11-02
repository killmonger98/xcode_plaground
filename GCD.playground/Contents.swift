import UIKit

// SYNC
DispatchQueue.global().sync {
    sleep(2)
    print("sync : Inside")
}

print("sync : Outside")

// ASYNC
DispatchQueue.global().async {
    sleep(2)
    print("async : Inside")
}

print("async : Outside")

// IN MAIN QUEUE
DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(5)) {
    print("Delay of 5 seconds")
}
DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
    print("Delay of 2 seconds")
}
