//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.map { Int(String($0)) ?? 0 }.reduce(0, +)
}
