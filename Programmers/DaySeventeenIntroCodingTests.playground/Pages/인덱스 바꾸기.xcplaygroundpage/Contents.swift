//: [Previous](@previous)

import Foundation

func solution(_ my_string:String,
              _ num1:Int,
              _ num2:Int) -> String {
    
    let firstIdx = my_string[my_string.index(my_string.startIndex, offsetBy: num1)]
    let secondIdx = my_string[my_string.index(my_string.startIndex, offsetBy: num2)]
    
    var result: String = ""
    
    for (idx, item) in my_string.enumerated() {
        if idx == num1 {
            result += String(secondIdx)
        } else if idx == num2 {
            result += String(firstIdx)
        } else {
            result += String(item)
        }
    }
    
    
    return result
}

solution("hello", 1, 2)

/*
 다른 사람의 풀이
 - String 에서 swapAt 을 사용할 수 없어서 다른 방법을 택했는데 생각해보니 배열로 바꿔준 후에 사용하면 됐었다...
 */

func solution2(_ myString: String, _ num1: Int, _ num2: Int) -> String {
    var array = ArraySlice(myString)

    array.swapAt(num1, num2)
    return array.map { String($0) }.joined()
}

