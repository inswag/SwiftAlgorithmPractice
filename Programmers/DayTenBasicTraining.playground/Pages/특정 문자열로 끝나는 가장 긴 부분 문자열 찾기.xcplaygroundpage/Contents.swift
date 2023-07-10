//: [Previous](@previous)

import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    let rMyString = myString.reversed()
    let rPat = pat.reversed()
    let idx = String(rMyString).range(of: String(rPat))!
    let t = String(rMyString).index(idx.lowerBound, offsetBy: 0)
    let result = String(String(rMyString)[t...].reversed())
    return result
}

solution("AbCdEFG", "dE")

/*
 다른 사람의 풀이
 - hasSuffix 메서드를 쓰면 쉽게 풀 수 있는 문제였다... 아................................
 */
func solution2(_ myString:String, _ pat:String) -> String {
    var str = myString
    while str.hasSuffix(pat) == false {
        str = String(str.dropLast())
    }
    return str
}
