//: [Previous](@previous)

import Foundation

let input = Int(readLine()!) ?? 0

var xMatrixs: [Int] = []
var yMatrixs: [Int] = []

for _ in 0..<input {
    let matrix = readLine()!
        .split(separator: " ")
        .map { Int($0) ?? 0}
    xMatrixs.append(matrix[0])
    yMatrixs.append(matrix[1])
}

let sortedXMatrixs = xMatrixs.sorted(by: < )
let sortedYMatrixs = yMatrixs.sorted(by: < )

print((sortedXMatrixs.last! - sortedXMatrixs.first!) * (sortedYMatrixs.last! - sortedYMatrixs.first!))
