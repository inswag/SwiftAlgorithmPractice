//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return my_string.map {
        if String($0) == String(alp) {
            return String($0.uppercased())
        } else {
            return String($0)
        }
    }.joined(separator: "")
}

solution("programmers"    , "p"    )
