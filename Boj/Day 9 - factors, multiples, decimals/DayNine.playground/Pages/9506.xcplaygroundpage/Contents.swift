//: [Previous](@previous)

import Foundation

for _ in 0..<100000 {
    let input = Int(readLine()!) ?? 0
    
    if input == -1 {
        break
    }
    
    var nums: [Int] = []
    
    for i in 1..<input {
        if input % i == 0 {
            nums.append(i)
        }
    }
    
    if nums.reduce(0, +) == input {
        let strNums = nums.map { String($0) }.joined(separator: " + ")
        print("\(input) = \(strNums)")
    } else {
        print("\(input) is NOT perfect.")
    }
}
