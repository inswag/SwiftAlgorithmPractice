//: [Previous](@previous)

import Foundation

let tryCount = Int(readLine()!) ?? 0
var rule: Int = 1
var point: Int = 2

if tryCount != 0 {
    for i in 0..<(tryCount) {
        if i == 0 {
            point += 1
        } else {
            rule *= 2
            point += rule
        }
    }
}

print(point * point)
