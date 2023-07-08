//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return Array(num_list[(n)...]) + Array(num_list[0..<n])
}

solution([5,2,1,7,5], 3)
