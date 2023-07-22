//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> Int {
    var intArr: [Int] = []
    var num: String = ""
    
    for (idx, s) in my_string.enumerated() {
        if Int(String(s)) == nil {
            if num != "" {
                intArr.append(Int(num)!)
            }
            
            num = ""
        } else {
            num += String(s)
            
            if idx == my_string.count - 1 {
                intArr.append(Int(num)!)
            }
        }
    }
    
    return intArr.reduce(0, +)
}

solution("11111"    )
