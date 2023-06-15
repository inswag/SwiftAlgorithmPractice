//: [Previous](@previous)

import Foundation

while true {
    if let input = readLine() {
        let sum = input
            .split(separator: " ")
            .map({ Int($0) ?? 0 })
            .reduce(0, +)
        
        print(sum)
    } else {
        break
    }
}
