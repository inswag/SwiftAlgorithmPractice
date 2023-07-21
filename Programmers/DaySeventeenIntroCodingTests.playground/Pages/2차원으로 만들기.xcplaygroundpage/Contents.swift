//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    var slice: [Int] = []
    
    num_list.forEach {
        slice.append($0)
        
        if slice.count == n {
            result.append(slice)
            slice.removeAll()
        }
    }
    
    return result
}


solution([1, 2, 3, 4, 5, 6, 7, 8], 2)
