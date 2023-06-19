//: [Previous](@previous)

import Foundation

/*
 문자열 my_string, overwrite_string과 정수 s가 주어집니다. 문자열 my_string의 인덱스 s부터 overwrite_string의 길이만큼을 문자열 overwrite_string으로 바꾼 문자열을 return 하는 solution 함수를 작성해 주세요.
 
 */

func solution(_ my_string:String,
              _ overwrite_string:String,
              _ s:Int) -> String {

    
    var myString = my_string
    var overwriteString = overwrite_string
    
    var result: String = ""
    
    for i in 0..<1000 {
        if i < s {
            let startIdx = my_string.index(my_string.startIndex, offsetBy: i)
            let selectedStr = my_string[startIdx]
            result += String(selectedStr)
            myString.removeFirst()
        } else {
            result += overwrite_string
            
            for _ in 0..<(overwrite_string.count) {
                if !myString.isEmpty {
                    myString.removeFirst()
                }
            }
            
            break
        }
    }
    
    if !myString.isEmpty {
        result += myString
    }
    
    return result
}

solution("Program29b8UYP", "merS123", 7)

/*
 다른 사람의 풀이 및 보고 느낀 점
 
 - 인덱스를 사용해서 풀어야 겠다고는 생각했는데, 아래와 같이 풀면 index out of range 가 발생할거라 생각했다.
   일단 도전해보면서 생각해보는 자세가 필요하다.
 */

//func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
//    let startIdx = my_string.index(my_string.startIndex, offsetBy: 0)
//    let endIdx = my_string.index(my_string.endIndex, offsetBy: 0)
//    let newStartIdx = my_string.index(my_string.startIndex, offsetBy: s)
//    let newEndIdx = my_string.index(my_string.startIndex, offsetBy: s + overwrite_string.count)
//
//    return "\(my_string[startIdx..<newStartIdx])\(overwrite_string)\(my_string[newEndIdx..<endIdx])"
//}
