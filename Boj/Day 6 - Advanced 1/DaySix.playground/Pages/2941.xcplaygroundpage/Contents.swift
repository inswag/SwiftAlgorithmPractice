//: [Previous](@previous)

import Foundation

var inputWord = readLine()!
var cAlphabet = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

for c in cAlphabet {
    inputWord = inputWord.replacingOccurrences(of: c, with: "1")
}

print(inputWord.count)
