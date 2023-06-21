//: [Previous](@previous)

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let bigA: [String] = [String(a), String(b)]
    let bigB: [String] = [String(b), String(a)]
    
    let compareA = Int(bigA.joined()) ?? 0
    let compareB = Int(bigB.joined()) ?? 0
    
    if compareA > compareB {
        return compareA
    } else if compareB > compareA {
        return compareB
    } else {
        return compareA
    }
}

solution(9, 91)

/*
 다른 사람의 풀이
 - 최대값을 비교하는 max(Int, Int) 함수를 이용하면 쉽게 풀 수 있었다.
 */

func solution(_ a:Int, _ b:Int) -> Int {
    return max(Int(String(a) + String(b))!, Int(String(b) + String(a))!)
}
