//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    var arr: [Bool] = []
    
    for _ in 0..<my_string.count {
        arr.append(false)
    }
    
    for index in indices {
        arr[index] = true
    }
    
    var result: String = ""
    
    for i in 0..<my_string.count {
        if !arr[i] {
            let index = my_string.index(my_string.startIndex, offsetBy: i)
            result += String(my_string[index])
        }
    }
    
    return result
}

solution("apporoograpemmemprs", [1, 16, 6, 15, 0, 10, 11, 3])

/*
 다른 사람의 풀이
 */

func solution2(_ my_string:String, _ indices:[Int]) -> String {
    var my_string = my_string.map { String($0) }
    indices.forEach { my_string[$0] = "" }
    return my_string.filter { !$0.isEmpty }.map { String($0) }.joined()
}
