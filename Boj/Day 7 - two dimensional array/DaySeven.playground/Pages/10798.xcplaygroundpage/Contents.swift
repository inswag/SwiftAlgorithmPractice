//: [Previous](@previous)

import Foundation

var matrixs: [String: [String.Element]] = [:]
var result: String = ""

for _ in 0..<5 {
    let input = readLine()!
    
    for i in 0..<input.count {
        let key = String(i)
        
        let idx = input.index(input.startIndex,
                              offsetBy: i)
        let str = input[idx]
        
        if matrixs[key] == nil {
            matrixs[key] = [str]
        } else {
            matrixs[key]?.append(str)
        }
    }
}

let a = matrixs.sorted { Int($0.key)! < Int($1.key)! }

a.forEach {
    result += $0.value
}

print(result)
