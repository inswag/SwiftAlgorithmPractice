//: [Previous](@previous)

import Foundation

func solution(_ strlist:[String]) -> [Int] {
    return strlist.map { Int($0.count) }
}
