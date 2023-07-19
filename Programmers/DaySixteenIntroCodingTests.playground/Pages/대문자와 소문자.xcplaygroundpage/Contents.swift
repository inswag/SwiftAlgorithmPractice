//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map {
        if $0.isUppercase {
            return String($0).lowercased()
        } else {
            return String($0).uppercased()
        }
    }.joined()
}
