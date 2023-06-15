//: [Previous](@previous)

import Foundation

let inputNum = Int(readLine()!) ?? 0

for idx in (1...inputNum) {
    let readLine = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
    print("Case #\(idx): \(readLine.first!) + \(readLine.last!) = \(readLine.reduce(0, +))")
}
