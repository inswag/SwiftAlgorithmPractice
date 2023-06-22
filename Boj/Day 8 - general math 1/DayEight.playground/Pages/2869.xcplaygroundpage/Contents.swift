//: [Previous](@previous)

import Foundation


let input = readLine()!.split(separator: " ").map { Double($0) ?? 0.0 }

let up = input[0]
let down = input[1]
let days = input[2]

print(Int(ceil((days-down) / (up-down))))
