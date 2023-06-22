//: [Previous](@previous)

import Foundation

let input = readLine()!.split(separator: " ").map { String($0) }

var firstReverseStr = Array(input[0].map { String($0) }.reversed())
var secondReverseStr = Array(input[1].map { String($0) }.reversed())

let supplierArr = Array
    .init(repeating: "0",
          count: abs(firstReverseStr.count - secondReverseStr.count))

if firstReverseStr.count > secondReverseStr.count {
    secondReverseStr = secondReverseStr + supplierArr
} else {
    firstReverseStr = firstReverseStr + supplierArr
}

var supplier: Int = 0
var resultArr: [String] = []

for i in 0..<firstReverseStr.count {
    let sum = Int(firstReverseStr[i])! + Int(secondReverseStr[i])! + supplier
    supplier = sum / 10
    
    if i == (firstReverseStr.count - 1) {
        resultArr.append(String(sum))
    } else {
        resultArr.append(String(sum % 10))
    }
}

print(resultArr.reversed().joined(separator: ""))
