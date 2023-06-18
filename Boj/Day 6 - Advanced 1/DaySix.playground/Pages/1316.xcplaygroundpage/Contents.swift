//: [Previous](@previous)

import Foundation

var resultCount: Int = 0

for _ in 0..<(Int(readLine()!) ?? 0) {
    let input = readLine()!
    
    var arr: [String.Element] = []
    var isFail: Bool = false
    
    for i in input {
        if !arr.contains(i) {
            arr.append(i)
        } else {
            if arr.last != i {
                isFail = true
            }
        }
    }
    
    if !isFail {
        resultCount += 1
    }
}

print(resultCount)
