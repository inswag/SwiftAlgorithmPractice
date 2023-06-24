//: [Previous](@previous)

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    return max(Int(String(a)+String(b))!, 2 * a * b)
}

solution(2, 91)
solution(91, 2)
