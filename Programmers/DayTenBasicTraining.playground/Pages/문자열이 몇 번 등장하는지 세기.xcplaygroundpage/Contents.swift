//: [Previous](@previous)

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var result: Int = 0
    
    for i in 0..<(myString.count - pat.count + 1) {
        let sIdx = myString.index(myString.startIndex, offsetBy: i)
        let eIdx = myString.index(sIdx, offsetBy: pat.count - 1)
        
        if myString[sIdx...eIdx] == pat {
            result += 1
        }
    }
    
    return result
}

solution("aaaa", "aa")
