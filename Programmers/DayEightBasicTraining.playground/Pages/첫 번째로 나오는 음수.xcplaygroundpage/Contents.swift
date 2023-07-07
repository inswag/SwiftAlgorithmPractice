//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int]) -> Int {
    for (idx, num) in num_list.enumerated() {
        if num < 0 {
            return idx
        }
    }
    
    return -1
}
