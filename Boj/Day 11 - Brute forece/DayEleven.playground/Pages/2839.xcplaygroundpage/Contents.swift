//: [Previous](@previous)

import Foundation

let input = Int(readLine()!)!
var possibleCases: [Int] = []

for i in 0...5000 {
    if i * 5 > input {
        break
    }
    
    for j in 0...5000 {
        let fiveKG = i * 5
        let threeKG = j * 3
        
        if fiveKG + threeKG > input {
            break
        }
        
        if fiveKG + threeKG == input {
            possibleCases.append(i + j)
        }
    }
}

if possibleCases.count == 0 {
    print(-1)
} else {
    let sortedCases = possibleCases.sorted(by: <)
    print(sortedCases[0])
}
