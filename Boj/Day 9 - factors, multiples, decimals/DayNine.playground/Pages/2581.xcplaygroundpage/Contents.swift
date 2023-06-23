//: [Previous](@previous)

import Foundation

let minNum = Int(readLine()!) ?? 0
let maxNum = Int(readLine()!) ?? 0

var nums: [Int] = []

if minNum < 2 && maxNum < 2 {
    print(-1)
} else {
    for num in minNum...maxNum {
        var isFind: Bool = true
        
        if num < 2 {
            continue
        }
        
        for i in 2..<num {
            if num % i == 0 {
                isFind = false
                break
            }
        }
        
        if isFind {
            nums.append(num)
        }
    }
    
    if nums.count == 0 {
        print(-1)
    } else {
        print(nums.reduce(0, +))
        print(nums.first ?? 0)
    }
}
