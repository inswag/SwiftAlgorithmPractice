//: [Previous](@previous)

import Foundation

let input = readLine()!
    .components(separatedBy: " ")
    .map { Int($0) ?? 0 }

print("\(input[0]) + \(input[1]) = \(input[0] + input[1])")
