//: [Previous](@previous)

import Foundation

func solution(_ numLog:[Int]) -> String {
    var result: String = ""
    
    for (idx, num) in numLog.enumerated() {
        if idx == 0 {
           continue
        }
        
        let prevNum = numLog[idx - 1]
        let currNum = numLog[idx]
        
        if prevNum + 1 == currNum {
            result += "w"
        } else if prevNum - 1 == currNum {
            result += "s"
        } else if prevNum + 10 == currNum {
            result += "d"
        } else if prevNum - 10 == currNum {
            result += "a"
        }
    }
    
    return result
}

/*
다른 사람의 풀이
 */

func solution2(_ numLog:[Int]) -> String {
    let log: [Int: String] = [1: "w", -1: "s", 10: "d", -10: "a"]
    return (1..<numLog.count).map { log[numLog[$0] - numLog[$0 - 1]]! }.joined()
}
