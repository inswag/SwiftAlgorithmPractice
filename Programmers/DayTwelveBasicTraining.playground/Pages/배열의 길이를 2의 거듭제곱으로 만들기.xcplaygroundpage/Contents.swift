//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var two: Int = 1
    
    while true {
        if two >= arr.count {
            let distance = two - arr.count
            return arr + Array.init(repeating: 0, count: distance)
        } else {
            two = two * 2
        }
    }
}

solution([1,2,3,4,5,6])
