//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ k:Int) -> String {
    var result: String = ""
    
    for _ in 0..<k {
        result += my_string
    }
    
    return result
}

/*
  다른 사람의 풀이
 - String(repeating: String, count: Int) 를 사용하면 좀 더 쉽게 풀 수 있었음..
 */

func solution(_ my_string:String, _ k:Int) -> String {
    return String(repeating: my_string, count: k)
}
