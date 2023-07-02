//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    let piece = n / 7
    let remain = n % 7 > 0 ? 1 : 0
    return piece + remain
}
