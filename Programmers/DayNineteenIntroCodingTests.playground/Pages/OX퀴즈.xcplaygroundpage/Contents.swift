//: [Previous](@previous)

import Foundation

// 아래 코드는 Xcode에서는 되지만 프로그래머스에서는 안되는 코드
//func solution(_ quiz:[String]) -> [String] {
//    return quiz.map {
//        let separated = $0.replacingOccurrences(of: " = ", with: " ")
//
//        let course = String(separated.first!).split(separator: " ")
//
//        let firstNum = Int(String(course[0]))!
//        let secondOperator = String(course[1])
//        let thirdNum = Int(String(course[2]))!
//
//        let answer = Int(String(separated.last!))!
//
//        if secondOperator == "+" {
//            return firstNum + thirdNum == answer ? "O": "X"
//        } else {
//            return firstNum - thirdNum == answer ? "O": "X"
//        }
//    }
//}

func solution(_ quiz:[String]) -> [String] {
    return quiz.map {
        var temp: String = ""
        
        for c in $0 {
            temp += String(c)
        }
        
        let separated = temp.replacingOccurrences(of: " = ", with: " ")
        let course = String(separated).split(separator: " ")
        
        let firstNum = Int(String(course[0]))!
        let secondOperator = String(course[1])
        let thirdNum = Int(String(course[2]))!
        
        let answer = Int(String(course.last!))!

        if secondOperator == "+" {
            return firstNum + thirdNum == answer ? "O": "X"
        } else {
            return firstNum - thirdNum == answer ? "O": "X"
        }
    }
}

solution(["19 - 6 = 13", "5 + 66 = 71", "5 - 15 = 63", "3 - 1 = 2"])
