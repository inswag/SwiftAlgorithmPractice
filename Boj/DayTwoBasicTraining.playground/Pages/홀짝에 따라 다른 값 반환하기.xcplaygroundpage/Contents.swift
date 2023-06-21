//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    var odds: [Int] = []
    var evens: [Int] = []
    
    for i in 1...n {
        if i % 2 == 0 {
            evens.append(i * i)
        } else {
            odds.append(i)
        }
    }
    
    return n % 2 == 0 ? evens.reduce(0, +) : odds.reduce(0, +)
}

/*
 다른 사람의 풀이
 func stride<T>(from start: T, to end: T, by stride: T.Stride) -> StrideTo<T> where T : Strideable
 함수를 사용하면 for 문을 사용할 때 좀 더 다양한 값으로 사용할 수 있다.

 */

func solution(_ n:Int) -> Int {
    if n % 2 == 0 {
        return stride(from: 2, through: n, by: 2).reduce(0) { $0 + $1 * $1 }
        
    } else {
        return stride(from: 1, through: n, by: 2).reduce(0, +)
    }
}
