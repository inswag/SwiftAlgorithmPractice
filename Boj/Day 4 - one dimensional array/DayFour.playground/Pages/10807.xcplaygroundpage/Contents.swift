//: [Previous](@previous)

import Foundation

let totalIntCount: Int = Int(readLine()!) ?? 0
let ints: [Int] = readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }
let findInt: Int = Int(readLine()!) ?? 0

print(ints.filter { $0 == findInt }.count)
