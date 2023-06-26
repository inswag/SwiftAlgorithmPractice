//: [Previous](@previous)

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

let startX = 0
let startY = 0

let myX = input[0]
let myY = input[1]

let endX = input[2]
let endY = input[3]

var distances: [Int] = [(myX - startX), (myY - startY), (endX - myX), (endY - myY)].sorted(by: <)
print(distances.first ?? 0)
