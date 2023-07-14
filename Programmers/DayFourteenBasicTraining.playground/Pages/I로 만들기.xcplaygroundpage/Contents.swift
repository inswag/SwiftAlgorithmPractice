//: [Previous](@previous)

import Foundation

func solution(_ myString:String) -> String {
    let ref: [String.Element: Int] = [
        "a": 0, "b": 1, "c": 2, "d": 3, "e": 4, "f": 5, "g": 6, "h": 7, "i": 8, "j" :9,"k":10
    ]
    
    return myString.map {
        if ref[$0] == nil {
            return String($0)
        } else {
            return ref[$0]! < 11 ? "l" : String($0)
        }
    }.joined()
}

solution("abcdevwxyz"    )
