//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    let sIdx = my_string.index(my_string.startIndex, offsetBy: my_string.count - n)
    let eIdx = my_string.index(my_string.startIndex, offsetBy: my_string.count - 1)
    return String(my_string[sIdx...eIdx])
}

solution("ProgrammerS123", 11)

/*
다른 사람의 풀이
 - suffix 메서드를 사용하면 suffix 괄호 안의 숫자 만큼 뒤에서부터 가져온다.
 */

func solution2(_ myString: String, _ n: Int) -> String { String(myString.suffix(n)) }
