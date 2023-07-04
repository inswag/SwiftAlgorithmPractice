//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var result: String = ""
    
    for idx in index_list {
        let index = my_string.index(my_string.startIndex, offsetBy: idx)
        result += String(my_string[index])
    }
    
    return result
}

/*
 다른 사람의 풀이
 - index_list 에 map 을 이용하는 방법
 */


func solution2(_ myString: String, _ indexList: [Int]) -> String {
    return indexList.map { String(myString[myString.index(myString.startIndex, offsetBy: $0)]) }.joined()
}
