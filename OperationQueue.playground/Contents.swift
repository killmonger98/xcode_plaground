import UIKit
import Foundation

// creating a custom queue
let queue = OperationQueue()
queue.maxConcurrentOperationCount = 6

let mainQueue = OperationQueue.main

// for some operation to run on main queue
mainQueue.addOperation {
    let label = UILabel()
}

let fetchIdOperation = Operation()
let fetchUserPhotoWithIdOperation = Operation()

// adding dependency
// Means : do not execute first operation without completing second
fetchUserPhotoWithIdOperation.addDependency(fetchIdOperation)

print(fetchIdOperation.isFinished)
queue.addOperation(fetchUserPhotoWithIdOperation)
