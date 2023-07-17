//: [Previous](@previous)

import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    for i in 1...10000 {
        if (slice * i) / n > 0 {
            return i
        }
    }

    return 0
}
