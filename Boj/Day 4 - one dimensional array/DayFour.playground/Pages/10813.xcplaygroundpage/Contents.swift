//: [Previous](@previous)

import Foundation

let info = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

let basketCount = info.first!
let tryCount = info.last!

var basketArr = Array(1...basketCount)

for _ in 0..<tryCount {
    let tryInfo = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
    basketArr.swapAt(tryInfo.first! - 1, tryInfo.last! - 1)
}

print(basketArr.map { String($0) }.joined(separator: " "))
