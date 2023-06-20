//: [Previous](@previous)

import Foundation

let info = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

var arrA: [[Int]] = Array.init(repeating: [],
                              count: info.first!)
var arrB: [[Int]] = Array.init(repeating: [],
                               count: info.first!)

var arrSum: [[Int]] = Array.init(repeating: [],
                                count: info.first!)

for i in 0..<info.first! {
    arrA[i] = readLine()!.split(separator: " ").map{ Int($0) ?? 0 }
}

for i in 0..<info.first! {
    arrB[i] = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
}

for i in 0..<info.first! {
    for j in 0..<info.last! {
        arrSum[i].append(arrA[i][j] + arrB[i][j])
    }
}

arrSum.forEach {
    print($0.map { String($0) }.joined(separator: " "))
}
