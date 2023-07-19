//: [Previous](@previous)

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str1.range(of: str2) != nil ? 1 : 2
}
