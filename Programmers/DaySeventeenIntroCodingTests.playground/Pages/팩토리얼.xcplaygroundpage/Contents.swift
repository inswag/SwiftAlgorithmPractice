//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    var count: Int = 1
    var result: Int = 0
    
    while (n > result) {
        count += 1
        result = (1...count).reduce(1, *)
        print("count : ", count)
        print("result : ", result)
    }
    
    return count
}

solution(7)
