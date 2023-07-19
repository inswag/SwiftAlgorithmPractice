//: [Previous](@previous)

import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var result: Int = n
    Array.init(repeating: 2, count: t).forEach {
        result *= $0
    }
    return result
}

solution(2, 10)
