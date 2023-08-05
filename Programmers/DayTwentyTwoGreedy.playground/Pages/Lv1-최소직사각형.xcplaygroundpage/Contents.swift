//: [Previous](@previous)

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let maxOfMax = sizes.map { $0.max() ?? 0 }.max() ?? 0
    let maxOfMin = sizes.map { $0.min() ?? 0 }.max() ?? 0
    return maxOfMax * maxOfMin
}

solution([[60, 50], [30, 70], [60, 30], [80, 40]])
