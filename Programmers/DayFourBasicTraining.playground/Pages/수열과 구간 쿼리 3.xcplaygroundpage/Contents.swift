//: [Previous](@previous)

import Foundation

/*
 나의 풀이 - swapAt 함수를 사용하지 않은 경우
 */

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    
    for querie in queries {
        let firstIdx = querie[0]
        let secIdx = querie[1]
        
        let firstValue = result[firstIdx]
        let secValue = result[secIdx]
        
        result[firstIdx] = secValue
        result[secIdx] = firstValue
    }
    
    return result
}

/*
 다른 사람의 풀이 - swapAt 함수를 사용한 경우
 */

func solution2(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    queries.forEach { arr.swapAt($0[0], $0[1]) }
    return arr
}
