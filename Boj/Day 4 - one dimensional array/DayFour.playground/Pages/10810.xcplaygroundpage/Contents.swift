//: [Previous](@previous)

import Foundation

let info = readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }

let basketCount: Int = info.first!
let tryCount: Int = info.last!

var baskets = Array.init(repeating: 0,
                         count: basketCount)

for _ in 0..<tryCount {
    let tryInfo = readLine()!
        .split(separator: " ")
        .map { Int($0) ?? 0 }
    
    let firstBasket = tryInfo[0]
    let lastBasket = tryInfo[1]
    let throwBall = tryInfo[2]

    if firstBasket == lastBasket {
        baskets[firstBasket - 1] = throwBall
    } else {
        for order in firstBasket...lastBasket {
            baskets[order - 1] = throwBall
        }
    }
}

print(baskets
    .map { String($0) }
    .joined(separator: " "))
