//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> [String] {
    var result: [String] = []

    let p = my_string.indices
    
    for i in 0..<my_string.count {
        result.append(String(my_string.suffix(my_string.count - i)))
    }
    
    print("p : ", p)
    
    return result.sorted()
}

solution("banana")

/*
 다른 사람의 풀이
 - String의 indice 함수를 이용한 풀이. 나는 문제 제목이 접미사 배열이라 접미사 함수를 이용해 풀었지만 이 방법도 좋은 방법인듯
 */

func solution2(_ myString: String) -> [String] {
    myString.indices.map { String(myString[$0...]) }.sorted()
}
