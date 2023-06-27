//: [Previous](@previous)

import Foundation

let input = "9 23".split(separator: " ").map { Int($0) ?? 0 }
//let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
var result: Int = 0

func errorChecker(firstWord: String.Element, fullWord: String) -> Int {
    var errorCount: Int = 0
    
    if firstWord == "W" {
        for (idx, word) in fullWord.enumerated() {
            if idx % 2 == 0 {
                if firstWord == word {
                    continue
                } else {
                    errorCount += 1
                }
            } else {
                if word == "B" {
                    continue
                } else {
                    errorCount += 1
                }
            }
        }
    } else {
        for (idx, word) in fullWord.enumerated() {
            if idx % 2 == 0 {
                if firstWord == word {
                    continue
                } else {
                    print("word 1 : ", word)
                    errorCount += 1
                }
            } else {
                if word == "W" {
                    continue
                } else {
                    print("idx : \(idx), word 2 : \(word)")
                    errorCount += 1
                }
            }
        }
    }
    
    return errorCount
}


for i in 1...input[0] {
    switch i {
    case 1:
        let read = "BBBBBBBBBBBBBBBBBBBBBBB"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    case 2:
        let read = "BBBBBBBBBBBBBBBBBBBBBBB"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    case 3:
        let read = "BBBBBBBBBBBBBBBBBBBBBBB"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    case 4:
        let read = "BBBBBBBBBBBBBBBBBBBBBBB"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    case 5:
        let read = "BBBBBBBBBBBBBBBBBBBBBBB"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    case 6:
        let read = "BBBBBBBBBBBBBBBBBBBBBBB"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    case 7:
        let read = "BBBBBBBBBBBBBBBBBBBBBBB"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    case 8:
        let read = "BBBBBBBBBBBBBBBBBBBBBBB"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    case 9:
        let read = "BBBBBBBBBBBBBBBBBBBBBBW"
        result += errorChecker(firstWord: read.first!, fullWord: read)
    default:
        break
    }
    
//    let read = readLine()!
//    result += errorChecker(firstWord: read.first!, fullWord: read)
}

print(result)

