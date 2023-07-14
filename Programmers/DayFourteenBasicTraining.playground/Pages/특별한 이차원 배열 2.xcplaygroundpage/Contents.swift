//: [Previous](@previous)

import Foundation

func solution(_ arr:[[Int]]) -> Int {
    var result: Int = 0
    
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if arr[i][j] == arr[j][i] {
                result += 1
            }
        }
    }
    
    return result == (arr.count * arr.count) ? 1 : 0
}

solution([[5, 192, 33], [192, 72, 95], [33, 95, 999]])
solution([[19, 498, 258, 587], [63, 93, 7, 754], [258, 7, 1000, 723], [587, 754, 723, 81]])
