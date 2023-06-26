//: [Previous](@previous)

import Foundation

let input = readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }.sorted()
print(input[0] + input[1] + min(input[2], input[0] + input[1] - 1))
