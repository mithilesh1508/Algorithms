import UIKit

var str = "Hello, playground"
func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArr = array
    for currentIndex in 1..<array.count {
       var trackcurrentIndex = currentIndex
        while trackcurrentIndex>0 && sortedArr[trackcurrentIndex] < sortedArr[trackcurrentIndex - 1]{
            sortedArr.swapAt(trackcurrentIndex - 1, trackcurrentIndex)
            trackcurrentIndex -= 1
        }
    }
    
    return sortedArr
}
let arr = [10,-2,4,2,8,27,1,5,17,0, 26]
insertionSort(arr)
