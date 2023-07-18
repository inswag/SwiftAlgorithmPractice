//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map { String.init(repeating: $0, count: n) }.joined()
}

solution("abcd", 3)
