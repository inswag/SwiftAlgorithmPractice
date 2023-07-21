//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    for (idx, item) in String(num).enumerated() {
        if Int(String(item))! == k {
            return idx + 1
        }
    }
    
    return -1
}
