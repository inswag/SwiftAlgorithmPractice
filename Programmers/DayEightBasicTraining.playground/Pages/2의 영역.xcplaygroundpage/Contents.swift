//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var indices: [Int] = []
    
    for (idx, item) in arr.enumerated() {
        if item == 2 {
            indices.append(idx)
        }
    }
    
    if indices.count == 0 {
        return [-1]
    } else if indices.count == 1 {
        return [2]
    } else {
        let firstIdx = indices.first!
        let lastIdx = indices.last!
        
        var result: [Int] = []
        
        for i in firstIdx...lastIdx {
            result.append(arr[i])
        }
        
        return result
    }
}

/*
 더 좋은 방법이 없을까?
 - firstIndex 와 lastIndex 를 이용
 */

func solution2(_ arr:[Int]) -> [Int] {
    if let s = arr.firstIndex(of: 2), let e = arr.lastIndex(of: 2) {
        return Array(arr[s...e])
    } else {
        return [-1]
    }
}
