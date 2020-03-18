//: [Previous](@previous)

import Foundation


// 첫 번째 풀이
func solution(_ s: String) -> Bool {
    
    let check = Array(s).filter { $0.isLetter }.count

    if check == 4 || check == 6 {
        return true
    }
    
    return false
}

// 이 풀이의 경우에는 만약 문자열의 길이가 7 이고 그 안에 숫자가 하나만 포함되어 있을 경우를 커버하지 못함. 그래서 잘못 된 예


// 두 번째 풀이
func solution3(_ s: String) -> Bool {
    
    for i in Array(s) {
        if i.isLetter { return false }
    }
    
    if s.count == 4 || s.count == 6 {
        return true
    }
    
    return false
    
}

// 이 풀이의 경우는 문자열을 나누어 배열에 담아 검사를 통해 문자일 경우 바로 false 를 리턴하도록 했음.
// 그렇지 않다면 일단 모두 숫자라는 거니까 그 숫자가 4 혹은 6일 경우 true. 아니면 모든 경우는 false.

// 모범답안
func solution4(_ s: String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if Int(s) != nil {
            return true
        }
    }
    return false
}

// 문자열이 모두 숫자라면 Int 로 변환이 가능하겠지. 이걸 빨리 캐치했다면 좋았을텐데.
