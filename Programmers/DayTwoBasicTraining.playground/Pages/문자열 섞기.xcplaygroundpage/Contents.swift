//: [Previous](@previous)

import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    
    var result: String = ""
    
    for i in 0..<str1.count {
        let idx = str1.index(str1.startIndex, offsetBy: i)
        
        result += String(str1[idx])
        result += String(str2[idx])
    }
    
    return result
}

/*
 다른 사람의 풀이에서 배운 점
 - zip 함수를 사용하면 더 쉽게 풀이할 수 있다! 곧 zip 함수를 몰랐음...
 */

func solution(_ str1:String, _ str2:String) -> String {
    return zip(str1, str2).map { String($0) + String($1) }.joined()
}
