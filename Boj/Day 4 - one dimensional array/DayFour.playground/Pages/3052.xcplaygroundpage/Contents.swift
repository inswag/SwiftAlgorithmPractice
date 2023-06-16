//: [Previous](@previous)

import Foundation

var setNumArr: Set<Int> = []

Array.init(repeating: 0, count: 10).map { (Int(readLine()!) ?? $0) % 42 }.forEach {
    setNumArr.insert($0)
}

print(setNumArr.count)
