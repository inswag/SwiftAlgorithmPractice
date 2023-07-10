//: [Previous](@previous)

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return myString.map {
        if $0 == "A" {
            return "B"
        } else {
            return "A"
        }
    }.joined().contains(pat) ? 1 : 0
}

solution("ABBAA", "AABB")
