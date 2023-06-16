//: [Previous](@previous)

import Foundation

var students = Array(1...30)

for _ in Array(1...28) {
    students[(Int(readLine()!) ?? 0) - 1] = 0
}

let notSubmittedNums = students.filter { $0 != 0 }
print(notSubmittedNums.min()!)
print(notSubmittedNums.max()!)
