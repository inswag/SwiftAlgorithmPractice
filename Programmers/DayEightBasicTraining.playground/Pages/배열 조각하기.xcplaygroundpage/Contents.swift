//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result: [Int] = arr
    
    for i in 0..<query.count {
        if i % 2 == 0 {
            result.removeSubrange((query[i]+1)...)
        } else {
            result.removeSubrange(0..<query[i])
        }
    }
    
    return result
}

solution([0,1,2,3,4,5], [4,1,2])
