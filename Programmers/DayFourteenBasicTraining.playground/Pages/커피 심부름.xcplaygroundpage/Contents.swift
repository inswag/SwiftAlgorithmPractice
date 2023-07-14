//: [Previous](@previous)

import Foundation

func solution(_ order:[String]) -> Int {
    return order.map {
        if $0.contains("americano") || $0.contains("anything") {
            return 4500
        } else {
            return 5000
        }
    }.reduce(0, +)
}

solution(["cafelatte", "americanoice", "hotcafelatte", "anything"]    )
