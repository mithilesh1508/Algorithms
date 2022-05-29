import UIKit

struct LCM {
    init(){}
    func LCMOfTwoNumber(num1:Int, num2:Int)->Int{
        let hcf = HCFOfTwoNumber(x: num1, y: num2)
        let lcm = (num1*num2)/hcf
        return lcm
    }
    
    func HCFOfTwoNumber(x: Int, y: Int) -> Int {
        var temp = 0
        var number1 = min(x, y)
        var number2 = max(x, y)
        
        while number1 != 0 {
            temp = number2
            number2 = number1
            number1 = temp % number2
        }
        return number2
    }
}
let lcmofNumber = LCM()
lcmofNumber.LCMOfTwoNumber(num1: 3, num2: 9)

