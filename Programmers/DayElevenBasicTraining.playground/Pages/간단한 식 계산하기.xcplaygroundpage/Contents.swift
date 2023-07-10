//: [Previous](@previous)

import Foundation

func solution(_ binomial:String) -> Int {
    let result = binomial.split(separator: " ").map { String($0) }
    
    switch result[1] {
    case "+":
        return Int(result[0])! + Int(result[2])!
    case "-":
        return Int(result[0])! - Int(result[2])!
    case "*":
        return Int(result[0])! * Int(result[2])!
    default:
        return 0
    }
}
