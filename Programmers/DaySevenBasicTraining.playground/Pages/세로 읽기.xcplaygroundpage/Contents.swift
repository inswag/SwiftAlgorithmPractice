//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    var myArr: [[String.Element]] = []
    
    var arr: [String.Element] = []
    var count: Int = 0
    
    for item in my_string {
        arr.append(item)
        count += 1
        
        if count == m {
            myArr.append(arr)
            arr.removeAll()
            count = 0
        }
    }
    
    var result: String = ""
    
    for arr in myArr {
        result += String(arr[c - 1])
    }
    
    return result
}

solution("ihrhbakrfpndopljhygc", 4, 2)

/*
 다른 사람의 풀이
 - 나는 이중 배열을 만드는 것을 생각 했는데 enumerated 의 특성을 통해서 쉽게 풀 수 있었다...
 */

func solution2(_ myString: String, _ m: Int, _ c: Int) -> String {
    return myString.enumerated()
        .filter { $0.offset % m == c - 1 }
        .map { String($0.element) }
        .joined()
}
