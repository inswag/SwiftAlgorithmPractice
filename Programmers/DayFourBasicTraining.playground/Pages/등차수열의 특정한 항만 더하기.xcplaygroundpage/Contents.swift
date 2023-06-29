//: [Previous](@previous)

import Foundation

// a : 첫째항
// d : 공차
// included : 길이가 n인 boolean 타입 배열

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var result: Int = 0
    
    for (idx, item) in included.enumerated() {
        let num = a + (d * idx)
        
        if item {
            result += num
        }
    }
    
    return result
}
