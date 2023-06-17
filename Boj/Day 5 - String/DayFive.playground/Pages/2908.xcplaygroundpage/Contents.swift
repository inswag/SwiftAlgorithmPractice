//: [Previous](@previous)

import Foundation

let input = readLine()!.split(separator: " ")

var firstReverseArr: [String] = []
var secondReverseArr: [String] = []

for num in input.first! {
    firstReverseArr.insert(String(num), at: 0)
}

for num in input.last! {
    secondReverseArr.insert(String(num), at: 0)
}

let firstReversedNum = Int(firstReverseArr.joined()) ?? 0
let secondReversedNum = Int(secondReverseArr.joined()) ?? 0

print(firstReversedNum > secondReversedNum ? firstReversedNum : secondReversedNum)
