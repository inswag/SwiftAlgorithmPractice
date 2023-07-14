//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    return arr.map {
        if k % 2 != 0 {
            return $0 * k
        } else {
            return $0 + k
        }
    }
}
