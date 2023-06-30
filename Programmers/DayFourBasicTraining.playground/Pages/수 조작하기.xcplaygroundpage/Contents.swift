//: [Previous](@previous)

import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var supplementNum: Int = 0
    
    for c in control {
        switch c {
        case "w":
            supplementNum += 1
        case "s":
            supplementNum -= 1
        case "d":
            supplementNum += 10
        case "a":
            supplementNum -= 10
        default:
            supplementNum += 0
        }
    }
    
    return n + supplementNum
}

solution(0, "wsdawsdassw")
