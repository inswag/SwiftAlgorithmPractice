//: [Previous](@previous)

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var dic: [Int: Int] = [:]
    
    emergency.sorted(by: >).enumerated().forEach {
        dic[$0.element] = $0.offset + 1
    }
    
    return emergency.map { dic[$0] ?? 0 }
}

solution([3, 76, 24])

/*
 다른 사람의 풀이
 - 요렇게도 풀수 있네 !
 */

func solution2(_ e: [Int]) -> [Int] {
    e.map { e.sorted(by: >).firstIndex(of: $0)! + 1 }
}

