//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return Array(num_list.sorted()[0...4])
}

solution([12, 4, 15, 46, 38, 1, 14])
