//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> Int {
    var result: [Int] = arr
    var calculatedResult: [Int] = []
    
    for i in 0..<10000 {
        calculatedResult = result
        
        result = result.map {
            if $0 >= 50 && $0 % 2 == 0 {
                return $0 / 2
            } else if $0 < 50 && $0 % 2 != 0 {
                return ($0 * 2) + 1
            } else {
                return $0
            }
        }
        
        if calculatedResult == result {
            return i
        }
    }
    
    return 0
}

solution([1, 2, 3, 100, 99, 98])

/*
 피드백
 - while 문을 사용했으면 10000 까지 돌려야 하나 와 같은 고민을 안했을 것
 */
