import UIKit

var str = "Hello, Stack"
public struct Stack<T> {
   fileprivate var array = [T]()
    public var isEmpty: Bool{
        return array.isEmpty
    }
    public var count: Int{
        return array.count
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    var top: T?{
        return array.last
    }
}
var stack = Stack<String>()
stack.push("Apple")
stack.push("Mango")
stack.push("Pomegranates")
print("Stack==",stack.count,stack.top as Any,stack.pop() as Any)
