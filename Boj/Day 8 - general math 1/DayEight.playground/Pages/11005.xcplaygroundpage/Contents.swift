//: [Previous](@previous)

import Foundation

let input = readLine()!.split(separator: " ")
print(String(Int(input.first!) ?? 0,
             radix: Int(input.last!) ?? 0,
             uppercase: true))
