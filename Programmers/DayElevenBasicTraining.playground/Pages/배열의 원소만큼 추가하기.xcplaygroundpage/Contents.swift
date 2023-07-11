//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = []
    
    for a in arr {
        result += Array.init(repeating: a, count: a)
    }
    
    return result
}

solution([5,1,4])

/*
 다른 사람의 풀이
 - 변수를 안쓰고 바로 return을 하는 방법은 없을까?
 - flatMap 을 사용하면 됐었다 !
 */

func solution2(_ arr: [Int]) -> [Int] {
    return arr.flatMap { Array(repeating: $0, count: $0) }
}
