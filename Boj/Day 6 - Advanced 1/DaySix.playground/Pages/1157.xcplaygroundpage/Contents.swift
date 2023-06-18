//: [Previous](@previous)

import Foundation

var dic: [String: [String]] = [:]
let input = readLine()!.lowercased()

for word in input {
    let strWord = String(word)
    
    if dic[strWord] == nil {
        dic[strWord] = [strWord]
    } else {
        dic[strWord]?.append(strWord)
    }
}

var maxCount: Int = 0
var result: String = ""

for element in dic {
    if element.value.count > maxCount {
        maxCount = element.value.count
    }
}

for element in dic {
    if element.value.count == maxCount {
        result += element.key
    }
}

print(result.count > 1 ? "?" : result.uppercased())
