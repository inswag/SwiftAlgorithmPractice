//: [Previous](@previous)

import Foundation

func solution(_ dot:[Int]) -> Int {
    let isPositiveX: Bool = dot[0] > 0 ? true : false
    let isPositiveY: Bool = dot[1] > 0 ? true : false
    
    if isPositiveX, isPositiveY {
        return 1
    } else if !isPositiveX, isPositiveY {
        return 2
    } else if !isPositiveX, !isPositiveY {
        return 3
    } else {
        return 4
    }
}
