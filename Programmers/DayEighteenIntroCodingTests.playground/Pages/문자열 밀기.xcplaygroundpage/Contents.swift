//: [Previous](@previous)

import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var newA = A
    var newB = B
    
    if newA == newB {
        return 0
    }
    
    for idx in 0..<newA.count {
        let lastA = newA.removeLast()
        newA = String(lastA) + newA
        
        if newA == newB {
            return idx + 1
        }
    }
    
    return -1
}

solution("apple", "elppa")

/*
 다른 사람의 풀이
 - A 를 두번 붙이면 어쨌든 밀어내는 문자열이 나온다는 것을 이용해 푼 풀이로 요렇게도 풀 수 있구나 하는 생각의 확장.
 */

func solution2(_ A:String, _ B:String) -> Int {
    let arr = (A+A).components(separatedBy: B)
    return arr.count == 1 ? -1 : arr[1].count
}
