//: [Previous](@previous)

import Foundation

func solution(_ strArr:[String]) -> Int {
    var result: [Int: [String]] = [:]
    
    strArr.forEach {
        if result[$0.count] != nil {
            result[$0.count]?.append($0)
        } else {
            result[$0.count] = [$0]
        }
    }
    
    var maxCount: Int = 0
    
    result.forEach {
        if $0.value.count > maxCount {
            maxCount = $0.key
        }
    }
    
    return maxCount
}

solution(["a","bc","d","efg","hi"])

/*
 다른 사람의 풀이
 - 아 뭔가 더 좋은 방법이 있을 것 같다...
 - 최대 길이가 30임을 활용한 풀이.. 아래처럼 풀면 될듯
 */

func solution2(_ strArr:[String]) -> Int {
    var arr = Array(repeating: 0, count: 31)
    strArr.forEach { arr[$0.count] += 1 }
    return arr.max()!
}
