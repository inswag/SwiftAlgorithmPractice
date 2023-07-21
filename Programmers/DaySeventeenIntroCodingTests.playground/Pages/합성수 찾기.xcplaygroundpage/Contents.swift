//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    return Array.init(1...n).filter {
        var count: Int = 0
        
        for i in 1...$0 {
            if $0 % i == 0 {
                count += 1
            }
        }
        
        return count > 2
    }.count
}

solution(10)

/*
 다른 사람의 풀이
- 아래 사람처럼 풀고 싶었다. i % $0 == 0 부분을 잘 이해하지 못했음.
 */

func solution(_ n: Int) -> Int {
    (1...n).filter { i in (1...i).filter { i % $0 == 0 }.count > 2 }.count
}

