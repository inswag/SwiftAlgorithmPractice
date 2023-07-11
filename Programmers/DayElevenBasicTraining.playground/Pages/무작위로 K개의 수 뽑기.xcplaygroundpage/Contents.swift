//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result: [Int] = []
    
    for a in arr {
        if !result.contains(a) {
            result.append(a)
        }
        
        if result.count == k {
            break
        }
    }
    
    while result.count < k {
        result.append(-1)
    }
    
    return result
}

solution([0,1,1,1,1], 4)
