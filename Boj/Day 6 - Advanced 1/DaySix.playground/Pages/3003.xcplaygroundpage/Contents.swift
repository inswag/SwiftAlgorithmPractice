//: [Previous](@previous)

import Foundation

let sets = ["1", "1", "2", "2", "2", "8"]

var results: [Int] = []
let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

for (idx, item) in input.enumerated() {
    let inputNum = Int(item)
    let standardNum = Int(sets[idx]) ?? 0
    
    
    if inputNum == standardNum {
        results.append(0)
    } else if inputNum > standardNum {
        results.append(-(inputNum - standardNum))
    } else {
        results.append(standardNum - inputNum)
    }
}

print(results.map { String($0) }.joined(separator: " "))
