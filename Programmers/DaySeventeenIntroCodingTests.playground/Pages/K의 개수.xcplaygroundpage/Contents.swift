//: [Previous](@previous)

import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var kCount: Int = 0
    
    for num in Array(i...j) {
        String(num).forEach {
            if String($0) == String(k) {
                kCount += 1
            }
        }
    }
    
    return kCount
}

solution(1, 13, 1)

/*
 다른 사람의 풀이
 - 좀만 생각했으면 이렇게 풀 수 있었음.
 */

func solution2(_ i:Int, _ j:Int, _ k:Int) -> Int {
    return (i...j)
    .map {
        String($0).filter { String($0) == String(k) }.count
    }
    .reduce(0, +)
}
