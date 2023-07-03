//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    
    var newArr = arr
    
    for query in queries {
        let first = query[0]
        let last = query[1]
        let value = query[2]
        
        for i in first...last {
            if i % value == 0 {
                newArr[i] += 1
            }
        }
    }
    
    return newArr
}

solution([0,1,2,4,3], [[0,4,1],[0,3,2],[0,3,3]])
