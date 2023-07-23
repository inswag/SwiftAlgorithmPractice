//: [Previous](@previous)

import Foundation

func solution(_ array:[Int]) -> Int {
    return array.map { String($0).filter { Int(String($0))! == 7 }.count }.reduce(0, +)
}

solution([7, 77, 17])
