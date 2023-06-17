//: [Previous](@previous)

import Foundation

let inputString = String(readLine()!)
let idx = inputString.index(inputString.startIndex,
                            offsetBy: (Int(readLine()!) ?? 0) - 1)
print(inputString[idx])
