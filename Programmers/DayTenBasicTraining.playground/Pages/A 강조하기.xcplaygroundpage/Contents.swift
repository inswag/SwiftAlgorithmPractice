//: [Previous](@previous)

import Foundation

func solution(_ myString:String) -> String {
    return myString.map {
        if $0 == "a" || $0 == "A" {
            return $0.uppercased()
        } else {
            return $0.lowercased()
        }
    }.joined()
}

solution("PrOgRaMmErS")
