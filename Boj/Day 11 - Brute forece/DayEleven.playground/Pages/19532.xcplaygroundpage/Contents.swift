//: [Previous](@previous)

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

for i in -999...999 {
    var isFind: Bool = false
    
    for j in -999...999 {
        let fx = input[0] * i
        let fy = input[1] * j
        let fa = input[2]
        
        let sx = input[3] * i
        let sy = input[4] * j
        let sa = input[5]
        
        let firstCon = fx + fy
        let secCon = sx + sy
        
        if firstCon == fa && secCon == sa {
            print("\(i) \(j)")
            isFind = true
            break
        }
    }
    
    if isFind {
        break
    }
}
