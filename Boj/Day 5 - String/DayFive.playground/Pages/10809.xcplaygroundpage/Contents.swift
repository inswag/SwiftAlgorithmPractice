//: [Previous](@previous)

import Foundation

let alphabets: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
var resultArr: [String] = []

let inputWord = Array(String(readLine()!))

for alphabet in alphabets {
    
    var isFind: Bool = false
    
    for (inputIdx, inputItem) in inputWord.enumerated() {
        if alphabet == String(inputItem) {
            isFind = true
            resultArr.append(String(inputIdx))
            break
        }
    }
    
    if !isFind {
        resultArr.append(String(-1))
    }
}

print(resultArr.joined(separator: " "))
