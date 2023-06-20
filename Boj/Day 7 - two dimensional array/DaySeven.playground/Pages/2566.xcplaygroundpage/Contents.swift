import UIKit

let input = readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }

var matrixs: [[Int]] = []
let matrix: Int = input.count
var maxNum: Int = 0
var maxNumIdx: String = "0 0"

for i in 0..<(matrix)  {
    if i == 0 {
        matrixs.append(input)
        continue
    }

    let input = readLine()!
        .split(separator: " ")
        .map { Int($0) ?? 0 }
    matrixs.append(input)
}

for i in 0..<matrix {
    for j in 0..<matrix {
        let num = matrixs[i][j]
        
        if num >= maxNum {
            maxNum = num
            maxNumIdx = "\(i + 1) \(j + 1)"
        }
    }
}

print(maxNum)
print(maxNumIdx)
