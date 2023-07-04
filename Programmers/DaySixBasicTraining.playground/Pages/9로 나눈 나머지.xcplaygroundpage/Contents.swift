//: [Previous](@previous)

import Foundation

func solution(_ number:String) -> Int {
//    var result: Int = 0
//
//    for num in number {
//        result += Int(String(num)) ?? 0
//    }
//
//    return result % 9
    
    return number
        .map { Int(String($0)) ?? 0 }
        .reduce(0, +) % 9
}

solution("123")

/*
 다른 사람의 풀이
 - Number 를 split 하고 사용해야 하는 줄 알았는데, String 타입은 바로 map 의 사용이 가능했다. 그렇게 했으면 크게 어렵지 않았을 문제
 */

func solution2(_ number:String) -> Int {
    return number.map { Int(String($0))! }.reduce(0, +) % 9
}
