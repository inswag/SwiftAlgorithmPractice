//: [Previous](@previous)

import Foundation

// 첫 번쨰 풀이 : 오답
func solution(_ strings:[String], _ n:Int) -> [String] {
    let result = strings.sorted {
        if Array($0)[n] == Array($1)[n] {
            return Array($0)[n + 1] < Array($1)[n + 1]
        }
            return Array($0)[n] < Array($1)[n]
    }
    
    return result
}

solution(["sun", "bed", "car"], 1)

// Comments
//




