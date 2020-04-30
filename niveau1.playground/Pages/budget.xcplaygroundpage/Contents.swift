//: [Previous](@previous)

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    var value: Int = budget
    var success: [Int] = []
    
    d.sorted(by: < ).forEach {
        value -= $0
        if value >= 0 {
            success.append($0)
        }
    }
    
    return success.count
}

solution([1,3,4,6,2], 10)
