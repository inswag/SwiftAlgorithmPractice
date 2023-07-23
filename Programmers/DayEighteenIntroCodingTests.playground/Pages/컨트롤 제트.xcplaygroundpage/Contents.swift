//: [Previous](@previous)

import Foundation

func solution(_ s:String) -> Int {
    var resultArr: [Int] = []
    
    for c in s.split(separator: " ").map({ String($0) }) {
        if let num = Int(c) {
            resultArr.append(num)
        } else {
            resultArr.append(-resultArr.last!)
        }
    }
    
    return resultArr.reduce(0, +)
}

solution("1 2 Z 3")
