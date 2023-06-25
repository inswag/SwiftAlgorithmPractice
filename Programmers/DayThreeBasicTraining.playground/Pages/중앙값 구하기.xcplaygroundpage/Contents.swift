//: [Previous](@previous)

import Foundation

func solution(_ array:[Int]) -> Int {
    let sortedArr = array.sorted(by: < )
    return sortedArr[array.count / 2]
}

solution([9, -1, 0])

//: [Next](@next)
