//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> [Int] {
    let alphabet =  ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z", "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var result =  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
    for s in my_string {
        for i in 0..<alphabet.count {
            if String(s) == alphabet[i] {
                result[i] += 1
            }
        }
    }
    
    return result
}

/*
 다른 사람의 풀이
 - Ascii 값을 이용하면 쉽게 풀 수 있었음
 */

func solution2(_ my_string:String) -> [Int] {
    var answer = Array(repeating: 0, count: 52)
    my_string.forEach { answer[Int($0.asciiValue! - ($0.isUppercase ? 65 : 71))] += 1 }
    return answer
}
