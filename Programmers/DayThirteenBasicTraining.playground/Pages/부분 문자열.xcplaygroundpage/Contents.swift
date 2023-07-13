//: [Previous](@previous)

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str2.range(of: str1) != nil ? 1 : 0
}
