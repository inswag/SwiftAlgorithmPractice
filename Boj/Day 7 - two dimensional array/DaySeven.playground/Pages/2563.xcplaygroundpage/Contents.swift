//: [Previous](@previous)

import Foundation

var matrixs: [[Bool]] = Array
    .init(repeating: [Bool](repeating: false, count: 101),
          count: 101)

let input = Int(readLine()!) ?? 0

for _ in 0..<input {
    let readLine = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
    
    let x = readLine.first!
    let y = readLine.last!
    
    for y in y..<y + 10 {
        for x in x..<x + 10 {
            matrixs[y][x] = true
        }
    }
}

print(matrixs.flatMap { $0 }.filter { $0 == true }.count)
