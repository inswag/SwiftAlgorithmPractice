//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> String {
    return Array(my_string.reversed()).map { String($0) }.joined()
}

solution("insupark")
