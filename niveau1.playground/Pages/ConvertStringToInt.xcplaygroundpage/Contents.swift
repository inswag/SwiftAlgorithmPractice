//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// 나의 풀이
func solution(_ s:String) -> Int {
    
    if let num = Int(s) {
        return num
    }
    
    return 0
}

solution("1234")

// 다수의 풀이
func solution2(_ s:String) -> Int {
    return Int(s)!
}

// 이렇게 하면 사실 간단하지만 최대한 강제 언랩핑은 지양하고자 했다.
