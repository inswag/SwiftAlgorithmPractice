//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    let newNumbers = Array(1...500).filter {
        !($0 % 3 == 0)
    }.filter {
        !(String($0).contains("3"))
    }
    
    return newNumbers[n - 1]
}

solution(100)
