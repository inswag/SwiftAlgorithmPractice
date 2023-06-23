//: [Previous](@previous)

import Foundation

for _ in 0..<10000 {
    let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
    
    let first = input[0]
    let second = input[1]
    
    if first == 0 && second == 0 {
        break
    }
    
    if first > second {
        print(first % second == 0 ? "multiple" : "neither")
    } else {
        print(second % first == 0 ? "factor" : "neither")
    }
}
