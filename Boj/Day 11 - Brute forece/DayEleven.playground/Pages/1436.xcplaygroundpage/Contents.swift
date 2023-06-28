//: [Previous](@previous)

import Foundation

//let series = Int(readLine()!) ?? 0
let series = 500
var isFind: Bool = false
var count: Int = 665
var findCount: Int = 0

while !isFind {
    count += 1
    
    var possibleCount: Int = 0
    
    for i in String(count) {
        if i == "6" {
            possibleCount += 1
            
            if possibleCount == 3 {
                break
            }
        } else {
            possibleCount = 0
        }
    }
    
    if possibleCount == 3 {
        findCount += 1
    }
    
    if series == findCount {
        isFind = true
        print("\(count)")
    }
}
