//: [Previous](@previous)

import Foundation

let numbers: [Int] = [1, 2, 3]

var sum: Int = numbers.reduce(0) { (result: Int, next: Int) -> Int in
    print("\(result) + \(next)")
//    0 + 1
//    1 + 2
//    3 + 3
    return result + next
}

print(sum)  // 6

let subtract: Int = numbers.reduce(0) { (result: Int, next: Int) -> Int in
    print("\(result) - \(next)")
//    0 - 1
//    -1 - 2
//    -3 - 3
    return result - next
}

print(subtract)



