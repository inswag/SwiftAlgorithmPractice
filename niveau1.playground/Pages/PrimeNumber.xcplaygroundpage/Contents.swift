//: [Previous](@previous)

import Foundation

// 첫 번째 풀이
func solution(_ n:Int) -> Int {
    if n < 2 { return n }
    return (2...n).filter { n / $0 == 1 }.count
}

// Comment
// 생각 자체를 잘못함

// 두 번째 풀이


// Comment
//


// Comment
//
