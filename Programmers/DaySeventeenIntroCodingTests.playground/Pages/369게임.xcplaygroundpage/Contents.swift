//: [Previous](@previous)

import Foundation

func solution(_ order:Int) -> Int {
    return String(order).filter {
        Int(String($0))! == 3 || Int(String($0))! == 6 || Int(String($0))! == 9
    }.count
}

solution(29423)

/*
 다른 사람의 풀이
 - contains 이용
 */

func solution2(_ order:Int) -> Int {
    return String(order).filter { "369".contains($0) }.count
}
