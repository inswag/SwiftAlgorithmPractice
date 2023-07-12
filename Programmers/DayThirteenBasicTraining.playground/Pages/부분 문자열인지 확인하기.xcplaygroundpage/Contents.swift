//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ target:String) -> Int {
    return my_string.range(of: target) == nil ? 0 : 1
}
