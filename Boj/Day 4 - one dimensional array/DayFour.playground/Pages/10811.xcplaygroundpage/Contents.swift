//: [Previous](@previous)

import Foundation

let basketInfo = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

let basketCount = basketInfo.first!
let tryCount = basketInfo.last!

var baskets = Array(1...basketCount)

for _ in 0..<tryCount {
    let swapInfo = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

    let firstReversingIdx = swapInfo.first! - 1
    let lastReversingIdx = swapInfo.last! - 1

    baskets
        .replaceSubrange(firstReversingIdx...lastReversingIdx,
                         with: baskets[firstReversingIdx...lastReversingIdx].reversed())
}

print(baskets.map { String($0) }.joined(separator: " "))
