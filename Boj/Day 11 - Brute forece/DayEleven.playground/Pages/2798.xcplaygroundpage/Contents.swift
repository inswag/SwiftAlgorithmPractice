//: [Previous](@previous)

import Foundation

let input = readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }

let cardCount = input.first!
let objectiveCount = input.last!

let cards = readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }
    .sorted(by: <)

var result: Int = 0

for i in 0..<(cards.count - 2) {
    for j in i+1..<(cards.count - 1) {
        for m in j+1..<(cards.count) {
            let sum = cards[i] + cards[j] + cards[m]
            
            if result == 0 {
                result = sum
            } else {
                if abs(objectiveCount - result) < abs(objectiveCount - sum) {
                    continue
                } else {
                    if sum > objectiveCount {
                        continue
                    } else {
                        result = sum
                    }
                }
            }
        }
    }
}

print(result)
