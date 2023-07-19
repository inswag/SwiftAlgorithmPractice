//: [Previous](@previous)

import Foundation

func solution(_ hp:Int) -> Int {
    var result: Int = hp
    
    let king = result / 5
    
    result -= (king * 5)
    
    if result == 0 {
        return king
    }
    
    let middle = result / 3
    
    result -= (middle * 3)
    
    if result == 0 {
        return king + middle
    } else {
        return king + middle + result
    }
}
