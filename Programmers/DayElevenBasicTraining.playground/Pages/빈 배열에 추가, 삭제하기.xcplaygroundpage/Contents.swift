//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var result: [Int] = []
    
    for (idx, item) in arr.enumerated() {
        if flag[idx] {
            result += Array.init(repeating: item, count: item * 2)
        } else {
            for _ in 0..<item {
                result.removeLast()
            }
        }
    }
    
    return result
}

solution([3,2,4,1,3], [true, false, true, false, false]    )
