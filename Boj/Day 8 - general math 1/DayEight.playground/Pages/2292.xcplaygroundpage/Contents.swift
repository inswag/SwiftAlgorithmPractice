//: [Previous](@previous)

import Foundation

let input = (Int(readLine()!) ?? 0)
var count: Int = 1

for i in 0..<1000000000 {
    if input == 1 {
        print(1)
        break
    }
    
    if input > count {
        count += (6 * i)
    } else {
        print(i)
        break
    }
}
