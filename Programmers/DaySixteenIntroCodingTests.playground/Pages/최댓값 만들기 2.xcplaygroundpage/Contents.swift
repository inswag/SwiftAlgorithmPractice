//: [Previous](@previous)

import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sorted = numbers.sorted()
    
    let minusMax = sorted[0] * sorted[1]
    let plusMax = sorted[numbers.count - 1] * sorted[numbers.count - 2]
    
    return plusMax > minusMax ? plusMax : minusMax
}
