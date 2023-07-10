//: [Previous](@previous)

import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.filter {
        !$0.contains("ad")
    }
}

solution(["and","notad","abcd"]    )
