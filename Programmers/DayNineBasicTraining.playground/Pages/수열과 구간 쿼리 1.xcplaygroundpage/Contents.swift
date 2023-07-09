//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result: [Int] = arr
    
    for query in queries {
        let s = query[0]
        let e = query[1]
        
        for i in s...e {
            result[i] += 1
        }
    }
    
    return result
}

/*
 다른 사람의 풀이
 - 더 좋은 방법이 없을까...
 
 */
