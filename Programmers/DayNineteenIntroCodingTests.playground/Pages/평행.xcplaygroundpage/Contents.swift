//: [Previous](@previous)

import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var isParallel: Bool = false
    
    let removeDuplicateDots = Set(dots)

    guard removeDuplicateDots.count == dots.count else {
        return 1
    }
    
    
    for num in 1..<dots.count {
        let dotFirst = dots.first!      // x1,y1 (Static)
        let dotWithFirst = dots[num]    // x2,y2 (Dynamic)
        
        let remainDots = dots.filter { $0 != dotFirst && $0 != dotWithFirst }
        let dotRemainFirst = remainDots.first! // x3,y3 (Dynamic)
        let dotRemainLast = remainDots.last!   // x4,y4 (Dynamic)
        
        // Success Case
        // y2-y1 / x2-x1 == y4-y3 / x4-x3
        
        // Compare Case
        let xResultOne = abs(dotWithFirst.first! - dotFirst.first!)
        let xResultTwo = abs(dotRemainLast.first! - dotRemainFirst.first!)
        
        let yResultOne = abs(dotWithFirst.last! - dotFirst.last!)
        let yResultTwo = abs(dotRemainLast.last! - dotRemainFirst.last!)
        
        if Double(yResultOne) / Double(xResultOne) == Double(yResultTwo) / Double(xResultTwo) {
            isParallel = true
            break
        }
    }
    
    
    return isParallel ? 1 : 0
}

solution([[1, 4], [9, 2], [3, 8], [11, 6]]    )
solution([[3, 5], [4, 1], [2, 4], [5, 10]]    )
solution([[1, 1], [5, 5] ,[5, 5], [7,7]])
solution([[1,0], [0,1], [1,2], [2,1]])
