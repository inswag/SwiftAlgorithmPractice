//: [Previous](@previous)

import Foundation

let line = (Int(readLine()!) ?? 0)
let leafYear = ((line % 4 == 0) && (line % 100 != 0)) || ((line % 4 == 0) && (line % 400 == 0))
print(leafYear ? "1" : "0")
