//: [Previous](@previous)

import Foundation

func solution(_ s:String) -> String {
    return s.filter {
        var newS = s
        newS.remove(at: newS.firstIndex(of: $0)!)
        return !newS.contains($0)
    }.map { String($0) }.sorted().joined()
}

solution("abcabcadc")
