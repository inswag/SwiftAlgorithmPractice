//: [Previous](@previous)

import Foundation

var xMatrixs: [Int: [Int]] = [:]
var yMatrixs: [Int: [Int]] = [:]

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
    
    if xMatrixs[input.first!] == nil {
        xMatrixs[input.first!] = [input.first!]
    } else {
        xMatrixs[input.first!]?.append(input.first!)
    }
    
    if yMatrixs[input.last!] == nil {
        yMatrixs[input.last!] = [input.last!]
    } else {
        yMatrixs[input.last!]?.append(input.last!)
    }
}

print("\(xMatrixs.filter { $0.value.count == 1 }.first!.key) \(yMatrixs.filter { $0.value.count == 1 }.first!.key)")
