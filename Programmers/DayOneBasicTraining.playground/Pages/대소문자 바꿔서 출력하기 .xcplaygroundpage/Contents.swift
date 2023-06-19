//: [Previous](@previous)

import Foundation

/*
 나의 풀이
 - 기본 문자열과 모든 문자를 대문자로 바꾼 문자열을 비교해서 대소문자 여부를 구분해 result 문자열에 더해서 구했다.
 */

let input = readLine()!
let allUppercase = input.uppercased()

var result: String = ""

for (idx, item) in input.enumerated() {
    
    if item == allUppercase[allUppercase.index(allUppercase.startIndex, offsetBy: idx)] {
        result += item.lowercased()
    } else {
        result += item.uppercased()
    }
}

print(result)

/*
 다른 사람의 풀이
 - isLowercase 라는 메서드를 알았다면 좀 더 쉽게 풀 수 있었다.
 */

print(readLine()!.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }.joined())
