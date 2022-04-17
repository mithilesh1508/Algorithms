import UIKit

var str = "Queue"

public struct Queue<Type>
{
   fileprivate var array = [Type]()
    var isEmpty: Bool {
        return array.isEmpty
    }
    var itemCount: Int{
        return array.count
    }
    mutating func enqueue(_ element: Type){
        array.append(element)
    }
    mutating func dequeue() -> Type? {
        if isEmpty {
            return nil
        }
        else{
            return array.removeFirst()
        }
    }
    var front: Type? {
        return array.first
    }
}
var queue = Queue<String>()
queue.enqueue("Banana")
queue.enqueue("Orange")
queue.enqueue("Papaya")
queue.dequeue()
print("Queue==",queue)
