//: [Previous](@previous)

import Foundation


// 나의 풀이
func solution(_ n:Int) -> Int {
    if n == 0 { return 0 }
    return (1...n).filter { n % $0 == 0 }.reduce(0, +)
}

solution(12)

// Comment
// 고차함수를 잘 쓰면 편하구나...
