//: [Previous](@previous)

import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    // 원하는 조각 수 2~10 조각을 나타내는 slice
    // 피자를 먹는 사람의 수 n
    // n 명의 사람이 최소 한 조각 이상 피자를 먹고자 한다.
    for i in 1...10000 {
        if (slice * i) / n > 0 {
            return i
        }
    }
    
    return 0
}

/*
 다른 사람의 풀이
 - ceil 반올림 함수를 이용하면 좀 더 쉽게 풀 수 있다.
 */

func solution2(_ slice:Int, _ n:Int) -> Int {
    return Int(ceil(Double(n) / Double(slice)))
}
