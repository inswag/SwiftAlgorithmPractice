//: [Previous](@previous)

import Foundation

// Ref code
func solution(_ balls: Int, _ share: Int) -> Double {
    guard balls != share else { return 1 }
    
    let result = calculator(balls) / (calculator(balls - share) * calculator(share))
    return round(result)
}

func calculator(_ num: Int) -> Double {
    if num == 1 {
        return 1
    }
    
    return Double(num) * calculator(num - 1)
}
