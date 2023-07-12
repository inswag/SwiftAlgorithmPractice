//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    return arr.enumerated().map {
        if arr.count % 2 != 0 {
            if $0.offset % 2 == 0 {
                return $0.element + n
            } else {
                return $0.element
            }
        } else {
            if $0.offset % 2 != 0 {
                return $0.element + n
            } else {
                return $0.element
            }
        }
    }
}

solution([49, 12, 100, 276, 33], 27)
