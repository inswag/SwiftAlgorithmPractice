//: [Previous](@previous)

import Foundation

func solution(_ age:Int) -> String {
    let programmersAges: [Int: String] = [
        0: "a", 1: "b", 2: "c", 3: "d",
        4: "e", 5: "f", 6: "g", 7: "h",
        8: "i", 9: "j"]
    return String(age)
        .map { programmersAges[Int(String($0))!]! }
        .joined()
}

solution(23)
