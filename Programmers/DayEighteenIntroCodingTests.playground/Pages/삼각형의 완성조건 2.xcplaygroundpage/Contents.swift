//: [Previous](@previous)

import Foundation

func solution(_ sides:[Int]) -> Int {
    let maxV: Int = max(sides[0], sides[1])
    let minV: Int = min(sides[0], sides[1])
    return (maxV + minV) - (maxV - minV) - 1
}
