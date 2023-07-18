//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map { String($0) }.filter {
        !($0 == "a" || $0 == "e" || $0 == "i" || $0 == "o" || $0 == "u")
    }.joined()
}
