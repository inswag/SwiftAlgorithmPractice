//: [Previous](@previous)

import Foundation

if let count = Int(readLine()!) {
    if let nums = readLine() {
        let sorted = nums
            .split(separator: " ")
            .map { Int($0) ?? 0 }
            .sorted(by: < )
        
        print(sorted.first!, sorted.last!)
    }
}
