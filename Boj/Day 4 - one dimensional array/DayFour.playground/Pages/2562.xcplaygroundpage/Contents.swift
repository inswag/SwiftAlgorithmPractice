//: [Previous](@previous)

import Foundation

var numArr: [Int] = []

for _ in (0..<9) {
    numArr.append(Int(readLine()!) ?? 0)
}

let maxNum = numArr.max() ?? 0

if let idx = numArr.firstIndex(where: { $0 == maxNum }) {
    print(maxNum)
    print(idx + 1)
}
