//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> String {
    var result: String = my_string
    
    for (idx, item) in result.enumerated() {
        if result.count == idx {
            break
        }
        
        let tempIdx = result.index(result.startIndex, offsetBy: idx)
        let tempItem = result.remove(at: tempIdx)
        result = result.replacingOccurrences(of: String(tempItem), with: "")
        result.insert(tempItem, at: tempIdx)
    }
    
    return result
}

solution("We are the world")

/*
 다른 사람의 풀이
 - 아.. 너무 복잡하게 생각했다
 */

func solution2(_ my_string:String) -> String {
    var result = ""
    for c in my_string {
        if !result.contains(c) {
            result += String(c)
        }
    }
    return result
}
