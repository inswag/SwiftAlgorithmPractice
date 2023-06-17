//: [Previous](@previous)

import Foundation

let numberPad = [[""], [""], [""], ["A", "B", "C"], ["D", "E", "F"], ["G","H","I"], ["J","K","L"],["M","N","O"],["P","Q","R","S"],["T","U","V"],["W","X","Y","Z"]]

let input = readLine()!
var minTime: Int = 0

for word in input {
    for (idx, item) in numberPad.enumerated() {
        var isFind: Bool = false
        
        for i in item {
            if String(word) == String(i) {
                isFind = true
                break
            }
        }
        
        if isFind {
          minTime += idx
          break
        }
    }
}

print(minTime)
