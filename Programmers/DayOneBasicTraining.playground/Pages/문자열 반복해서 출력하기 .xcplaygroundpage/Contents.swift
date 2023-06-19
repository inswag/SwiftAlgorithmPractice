//: [Previous](@previous)

import Foundation

let inp = readLine()!
    .components(separatedBy: [" "])

var result: String = ""

for _ in 0..<(Int(inp[1]) ?? 0) {
    result += inp[0]
}

print(result)
