//: [Previous](@previous)

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    if a % 2 != 0 && b % 2 != 0 {
        return (a * a) + (b * b)
    } else if (a % 2 == 0 && b % 2 != 0) || (a % 2 != 0 && b % 2 == 0) {
        return 2 * (a + b)
    } else {
        return abs(a - b)
    }
}
