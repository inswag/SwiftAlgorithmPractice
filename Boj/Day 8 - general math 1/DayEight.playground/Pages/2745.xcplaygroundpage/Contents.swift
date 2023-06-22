//: [Previous](@previous)

import Foundation

let input = readLine()!.split(separator: " ")
print(Int(input.first!, radix: Int(input.last!) ?? 0) ?? 0)
