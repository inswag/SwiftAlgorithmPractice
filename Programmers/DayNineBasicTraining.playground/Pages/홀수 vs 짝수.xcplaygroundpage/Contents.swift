//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int]) -> Int {
    let evenSum = num_list
        .enumerated()
        .filter { $0.offset % 2 == 0 }
        .reduce(0) { $0 + $1.element }
    let oddSum = num_list
        .enumerated()
        .filter { $0.offset % 2 != 0 }
        .reduce(0) { $0 + $1.element }
    return evenSum < oddSum ? oddSum : evenSum
}

solution([4,2,6,1,7,6])
