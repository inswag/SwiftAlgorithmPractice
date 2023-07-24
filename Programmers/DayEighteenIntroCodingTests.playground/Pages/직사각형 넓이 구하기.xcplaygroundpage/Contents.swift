//: [Previous](@previous)

import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let sortedDotsForX = dots.sorted { $0.first! < $1.first! }
    let sortedDotsForY = dots.sorted { $0[1] < $1[1] }
    
    let xDistance = abs(sortedDotsForX[2].first! - sortedDotsForX[0].first!)
    let yDistance = abs(sortedDotsForY[2].last! - sortedDotsForY[0].last!)
    
    return xDistance * yDistance
}

solution([[1, 1], [2, 1], [2, 2], [1, 2]])
