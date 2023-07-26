//: [Previous](@previous)

import Foundation

func solution(_ polynomial:String) -> String {
    let x = polynomial
        .split(separator: " ")
        .filter { String($0).contains("x") }
        .map { String($0).replacingOccurrences(of: "x", with: "") }
        .map { Int($0) ?? 1 }.reduce(0, +)
    
    let num = polynomial
        .split(separator: " ")
        .filter { Int(String($0)) != nil }
        .map { Int(String($0)) ?? 0 }
        .reduce(0, +)
    
    if x == 0 && num != 0 {
        return "\(num)"
    } else if x != 0 && num == 0 {
        return x == 1 ? "x" : "\(x)x"
    } else {
        return x == 1 ? "x + \(num)" : "\(x)x + \(num)"
    }
}

solution("x")
