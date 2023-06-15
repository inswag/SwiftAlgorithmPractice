//: [Previous](@previous)

import Foundation

let inputNum = Int(readLine()!) ?? 0

for idx in 0..<inputNum {
    var arr = Array.init(repeating: " ",
                         count: inputNum)
    
    for num in 0..<idx + 1 {
        arr[num] = "*"
    }
    
    print(arr.reversed().joined())
}
