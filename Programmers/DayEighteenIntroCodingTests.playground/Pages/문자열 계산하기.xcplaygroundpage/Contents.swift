//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> Int {
    let arr = my_string.split(separator: " ")

    var result: Int = 0
    var temp: Int = 0
    var isAdding: Bool = false
    
    for (idx, item) in arr.enumerated() {
        if idx % 2 == 0 {
            temp = Int(String(item))!
            
            if idx == 0 {
                result += temp
            } else {
                if isAdding {
                    result += temp
                } else {
                    result -= temp
                }
            }
        } else {
            if item == "+" {
                isAdding = true
            } else {
                isAdding = false
            }
        }
    }
    
    return result
}

solution("10 + 1 - 9 + 2")

/*
    다른 사람으 ㅣ풀이
  - -가 있다면 "- " 를 "-" 로 변경해서 숫자 자체에 음수를 부여하게 되면 reduce 로 더해도 문제가 없게 만든다는 접근이 신선했다 배울점.
 */

func solution2(_ myString: String) -> Int {
    return myString.replacingOccurrences(of: "- ", with: "-")
        .replacingOccurrences(of: "+", with: "")
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .split(separator: " ")
        .map { Int($0)! }
        .reduce(0, +)
}
