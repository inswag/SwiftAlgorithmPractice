import UIKit

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count != arr2.count {
        return arr1.count > arr2.count ? 1 : -1
    } else {
        let arr1Sum = arr1.reduce(0, +)
        let arr2Sum = arr2.reduce(0, +)
        
        if arr1Sum > arr2Sum {
            return 1
        } else if arr1Sum < arr2Sum {
            return -1
        } else {
            return 0
        }
    }
}
