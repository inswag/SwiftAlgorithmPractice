//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 0
    
    for s in String(n) {
        result += Int(String(s)) ?? 0
    }
    
    return result
}

solution(1234)

/*
 다른 사람의 풀이
 - split() 사용시 에러가 났는데 쓸 필요가 없었다..
*/

func solution2(_ n:Int) -> Int {
    return String(n).map{Int(String($0))! }.reduce(0,+)
}
