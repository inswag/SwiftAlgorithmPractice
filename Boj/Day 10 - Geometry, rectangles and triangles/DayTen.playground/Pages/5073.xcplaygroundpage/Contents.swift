//: [Previous](@previous)

import Foundation

for _ in 0..<10000 {
    let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
    
    let sortedInput = input.sorted(by: < )
    let sum = input.reduce(0, +)
    
    if sum == 0 {
        break
    }
    
    if sortedInput[0] + sortedInput[1] > sortedInput[2] {
        if (sum / input.count) == input.first! {
            print("Equilateral")
        } else {
            if (sortedInput[0] == sortedInput[1]) || (sortedInput[0] == sortedInput[2]) || (sortedInput[1] == sortedInput[2]) {
                print("Isosceles")
            } else {
                print("Scalene")
            }
        }
    } else {
        print("Invalid")
    }
    
}
