//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var i: Int = 0
    var stk: [Int] = []
    
    for a in 0..<arr.count {
        if i < arr.count {
            if stk.count == 0 {
                stk.append(arr[a])
                i += 1
            } else {
                if stk.last! == arr[a] {
                    stk.removeLast()
                    i += 1
                } else {
                    stk.append(arr[a])
                    i += 1
                }
            }
        }
    }
    
    return stk.count > 0 ? stk : [-1]
}

solution([0,1,0,1,0])
