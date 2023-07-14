//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    
    for i in 0..<n {
        var arr: [Int] = []
        
        for j in 0..<n {
            if i == j {
                arr.append(1)
            } else {
                arr.append(0)
            }
        }
        
        result.append(arr)
    }
    
    return result
}

solution(3)
