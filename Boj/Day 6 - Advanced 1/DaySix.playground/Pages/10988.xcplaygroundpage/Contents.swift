//: [Previous](@previous)

import Foundation

var word: String = ""
var reverseWord: String = ""

var wordArr: [String.Element] = []
var reverseWordArr: [String.Element] = []

let inputWord = readLine()!.forEach {
    wordArr.append($0)
    reverseWordArr.insert($0, at: 0)
}

for num in 0..<wordArr.count {
    word += String(wordArr[num])
    reverseWord += String(reverseWordArr[num])
}

print(word == reverseWord ? "1" : "0")
