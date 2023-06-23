//: [Previous](@previous)

import Foundation

let input = Int(readLine()!) ?? 0
let nums = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

var result: Int = 0

for i in 0..<input {
    let num = nums[i]
    
    if num == 1 {
        continue
    }

    var isFind: Bool = true
    
    for j in 2..<num {
        if num % j == 0 {
            isFind = false
            break
        }
    }
    
    if isFind {
       result += 1
    }
}

print(result)
