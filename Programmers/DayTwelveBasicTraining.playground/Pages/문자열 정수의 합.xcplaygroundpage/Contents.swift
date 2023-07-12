//: [Previous](@previous)

import Foundation

func solution(_ num_str:String) -> Int {
    var result: Int = 0
    
    for num in num_str {
        result += Int(String(num)) ?? 0
    }
    
    return result
}

solution("123456789")

/*
 다사풀
 - string 에서 바로 reduce 를 사용할 수 있음
 */

func solution2(_ a:String) -> Int {
    a.reduce(0) { $0 + Int(String($1))! }
}
