//: [Previous](@previous)

import Foundation

let info = readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }

let numbers = readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }

var resultArr: [String] = []

for idx in 0..<info.first! {
    if info.last! > numbers[idx] {
        resultArr.append(String(numbers[idx]))
    }
}
