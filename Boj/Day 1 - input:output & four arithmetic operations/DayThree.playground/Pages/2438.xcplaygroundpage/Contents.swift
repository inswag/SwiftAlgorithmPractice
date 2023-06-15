//: [Previous](@previous)

import Foundation

let sequenceNum = Int(readLine()!) ?? 0

for idx in 1...sequenceNum {
    var stars: [String] = []
    
    for _ in 0..<idx {
        stars.append("*")
    }
    
    print(stars.joined())
}
