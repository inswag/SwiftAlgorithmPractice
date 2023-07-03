//: [Previous](@previous)

import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var arr = Array(l...r).map { String($0) }
    var result: [Int] = []
    
    for a in arr {
        var isFind: Bool = false
        
        for c in a {
            if c == "5" || c == "0" {
                isFind = true
            } else {
                isFind = false
                break
            }
        }
        
        if isFind { result.append(Int(a)!) }
    }

    return result.count > 0 ? result : [-1]
}

solution(5, 555)

/*
 다른 사람의 풀이
 - 내 풀이는 뭔가 비효울적인 느낌.. 그래서 찾아봄
 - 집합과 isSubset 함수를 사용하면 쉽게 풀 수 있었음.
 */

func solution2(_ l:Int, _ r:Int) -> [Int] {
    let answer = (l...r).map { $0 }.filter { Set(String($0)).isSubset(of: ["0", "5"]) }
    return answer.isEmpty ? [-1] : answer
}
