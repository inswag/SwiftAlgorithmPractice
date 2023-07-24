//: [Previous](@previous)

import Foundation

func solution(_ numbers:String) -> Int64 {
    let rules: [String: String] = [
        "zero": "0", "one": "1", "two": "2", "three": "3",
        "four": "4", "five": "5", "six": "6", "seven": "7",
        "eight": "8", "nine": "9"
    ]
    
    var resultArr: [String] = []
    
    var number: String = ""
    
    for num in numbers {
        number += String(num)
        
        if rules[number] == nil {
            continue
        } else {
            resultArr.append(rules[number]!)
            number = ""
        }
    }
    
    return Int64(resultArr.joined())!
}

solution("onetwothreefourfivesixseveneightnine")
