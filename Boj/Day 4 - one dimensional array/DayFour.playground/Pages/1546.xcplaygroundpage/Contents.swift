//: [Previous](@previous)

import Foundation

let subjects = Int(readLine()!) ?? 0
let scores = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
let maxScore = scores.max() ?? 0
let lieScore = scores.map { Double($0) / Double(maxScore) * Double(100) }.reduce(0, +) / Double(subjects)

print(lieScore)
