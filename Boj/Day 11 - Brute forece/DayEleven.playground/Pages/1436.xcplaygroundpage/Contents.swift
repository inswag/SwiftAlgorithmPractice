//: [Previous](@previous)

import Foundation

let series = Int(readLine()!) ?? 0
var isFind: Bool = false
var count: Int = 0
var findCount: Int = 0
var seriesName: String = ""

while !isFind {
    count += 1
    
    if "\(count)".contains("666") {
        findCount += 1
        seriesName = "\(count)"
        
        if series == findCount {
            isFind = true
        }
    }
    
}

print(seriesName)
