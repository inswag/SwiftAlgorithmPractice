//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    for a in idx..<arr.count {
        if arr[a] == 1 {
            return a
        }
    }
    
    return -1
}

// 문제가 좀 이해가 안됐음
