//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var newMyString: String = my_string
    
    for query in queries {
        var str: String = ""
        var temp: [String.Element] = []
        var middle: String = ""
        var end: String = ""
        
        for (idx, item) in newMyString.enumerated() {
            if idx < query[0] {
                str += String(item)
                continue
            }
            
            if idx >= query[0] && idx <= query[1] {
                temp.append(item)
                continue
            }
            
            if idx > query[1] {
                end += String(item)
                continue
            }
        }
        
        for t in temp.reversed() {
            middle += String(t)
        }
        
        newMyString = str + middle + end
    }
    
    return newMyString
}

solution("rermgorpsam", [[2, 3], [0, 7], [5, 9], [6, 10]])

/*
 다른 사람의 풀이
 - 아.. replaceSubrange 를 좀 기억하자
 */

func solution2(_ my_string:String, _ queries:[[Int]]) -> String {
    var my_string = Array(my_string)
    queries.forEach {
        my_string.replaceSubrange($0[0]...$0[1], with: Array(my_string[$0[0]...$0[1]].reversed()))
    }
    return String(my_string)
}
