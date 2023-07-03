//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var i: Int = 0
    var stk: [Int] = []
    
    while i < arr.count {
        if i < arr.count {
            if stk.count == 0 {
                stk.append(arr[i])
                i += 1
            } else {
                if stk.last! < arr[i] {
                    stk.append(arr[i])
                    i += 1
                } else {
                    stk.removeLast()
                }
            }
        }
    }
    
    return stk
}
