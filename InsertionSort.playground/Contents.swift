import UIKit

//Note: Insertion sort is a stable sort. A sort is stable when elements that have identical sort keys remain in the same relative order after sorting
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

// Insertion Sort without swap
func insertionSortNoSwap(_ array: [Int])-> [Int] {
    var sortedArr = array
    for index in 1..<sortedArr.count{
        var currentIndex = index
        let tempValue = sortedArr[currentIndex]
        while currentIndex>0 && tempValue < sortedArr[currentIndex - 1] {
           sortedArr[currentIndex] = sortedArr[currentIndex - 1]
            currentIndex -= 1
        }
        sortedArr[currentIndex] = tempValue
    }
    
    return sortedArr
}

let arr2 = [10,2,4,2,8,27,1,5,17,0, 26]
insertionSortNoSwap(arr2)


//Generic function
func insertionSortGeneric<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    var sortedArr = array
    for index in 1..<sortedArr.count {
        var currentIndex = index
        let temp = sortedArr[currentIndex]
        while currentIndex>0 && isOrderedBefore(temp, sortedArr[currentIndex - 1]) {
            //Instead of writing temp < sortedArr[currentIndex - 1], we call the isOrderedBefore() function.
            sortedArr[currentIndex] = sortedArr[currentIndex - 1]
            currentIndex -= 1
        }
        sortedArr[currentIndex] = temp
    }

    return sortedArr
}
let numbers = [1, 2, 1, 0, 2, 1,0]//[ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionSortGeneric(numbers, <)
insertionSortGeneric(numbers, >)

let strings = [ "b", "a", "d", "c", "e","f" ]
insertionSortGeneric(strings, <)
insertionSortGeneric(strings, >)

