//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = [n]
    var newN: Int = n
    
    while newN > 1 {
        if newN % 2 == 0  {
            result.append(newN / 2)
            newN = newN / 2
        } else {
            result.append(3 * newN + 1)
            newN = 3 * newN + 1
        }
    }
    
    return result
}
