//: [Previous](@previous)

import Foundation

let expectedTotalAmount = Int(readLine()!) ?? 0
let categoryCount = Int(readLine()!) ?? 0
var calculatedTotalAmount: Int = 0

for _ in (0..<categoryCount) {
    let line = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
    let productAmount = line.first!
    let productCount = line.last!
    calculatedTotalAmount += (productAmount * productCount)
}

print(expectedTotalAmount == calculatedTotalAmount ? "Yes" : "No")
