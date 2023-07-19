//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    for i in 1...1000 {
        if (i * i) == n {
            return 1
        }
    }
    
    return 2
}

/*
 다른 사람의 풀이
 - 이렇게 1000까지 반복문을 돌리지 않고 구하는 방법은 없을까?
 - 제곱근 함수 func sqrt(_: Double) -> Double  함수를 사용하면 된다!
 */

func solution2(_ n: Int) -> Int {
    sqrt(Double(n)) == floor(sqrt(Double(n))) ? 1 : 2
}

