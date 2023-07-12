//: [Previous](@previous)

import Foundation

func solution(_ n_str:String) -> String {
    var result: String = ""
    var isOn: Bool = false
    
    for n in n_str {
        if n != "0" {
            isOn = true
            result += String(n)
        } else {
            if !isOn {
                continue
            } else {
                result += String(n)
            }
        }
    }
    
    return result
}

solution("0010")

/*
 다른 사람의 풀이
 - 그냥 왼쪽부터 제거하는 방법이 있을 것 같은데 왜 나는 못했는지 모르겠음
 - 나는 아래처럼 removeFirst 하면 이상하게 오류가 났는데 흠..
 */

func solution2(_ n_str:String) -> String {
    var n_str = n_str
    while let n = n_str.first, n == "0" {
        n_str.removeFirst()
    }
    return n_str
}

solution2("0010")
