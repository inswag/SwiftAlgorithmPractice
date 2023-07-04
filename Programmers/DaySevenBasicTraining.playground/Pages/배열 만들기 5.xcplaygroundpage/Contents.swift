//: [Previous](@previous)

import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
      
    return intStrs.map {
        let sIdx = $0.index($0.startIndex, offsetBy: s)
        let eIdx = $0.index($0.startIndex, offsetBy: s + l - 1)
        let str = Int($0[sIdx...eIdx]) ?? 0
        return str
    }.filter {
        return $0 > k
    }
}

solution(["0123456789","9876543210","9999999999999"], 50000, 5, 5)

/*
 다른 사람의 풀이
 - prefix 함수와 suffix 함수의 사용법 공부
 */

func solution2(_ intStrs: [String], _ k: Int, _ s: Int, _ l: Int) -> [Int] {
    return intStrs.map { Int($0.prefix(s + l).suffix(l))! }.filter { $0 > k }
}
