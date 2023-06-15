//: [Previous](@previous)

import Foundation

for _ in 0..<1000 {
    let input = readLine()!
        .split(separator: " ")
        .map { Int($0) ?? 0 }
    
    if input.first! == 0 && input.last! == 0 {
        break
    } else {
        print(input.reduce(0, +))
    }
}
