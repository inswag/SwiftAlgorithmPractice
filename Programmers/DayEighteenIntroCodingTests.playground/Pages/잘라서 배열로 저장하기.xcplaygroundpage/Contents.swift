//: [Previous](@previous)

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var count: Int = 0
    var tempStr: String = ""
    var result: [String] = []
    
    for (idx, c) in my_str.enumerated() {
        count += 1
        tempStr += String(c)
        
        if count == n || (idx + 1) == my_str.count {
            count = 0
            result.append(tempStr)
            tempStr = ""
        }
    }
    
    return result
}

solution("abc1Addfggg4556b", 6)
