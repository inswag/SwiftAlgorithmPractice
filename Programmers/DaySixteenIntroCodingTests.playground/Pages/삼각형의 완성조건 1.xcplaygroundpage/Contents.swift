//: [Previous](@previous)

import Foundation

func solution(_ sides:[Int]) -> Int {
    let sortedSides = sides.sorted()
    return sortedSides.last! > (sortedSides[0] + sortedSides[1]) ? 1 : 2
}
