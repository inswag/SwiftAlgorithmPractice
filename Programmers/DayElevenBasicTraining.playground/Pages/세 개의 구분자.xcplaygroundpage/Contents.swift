//: [Previous](@previous)

import Foundation

func solution(_ myStr:String) -> [String] {
    let result = myStr
        .replacingOccurrences(of: "a", with: " ")
        .replacingOccurrences(of: "b", with: " ")
        .replacingOccurrences(of: "c", with: " ")
    return result.split(separator: " ").map { String($0) }
}

solution("baconlettucetomato")
