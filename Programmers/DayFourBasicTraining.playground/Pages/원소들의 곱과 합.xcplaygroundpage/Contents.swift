//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int]) -> Int {
    let multipleSum = num_list.reduce(1, *)
    let sum = num_list.reduce(0, +)
    return multipleSum < (sum * sum) ? 1 : 0
}
