//: [Previous](@previous)

import Foundation

// 첫 번째 풀이
func solution(_ n:Int) -> String {
    
    var result: [String] = []
    
    if n < 1 || n > 10000 {
        return ""
    }
    
    for i in 1...n {
        if i % 2 == 0 {
            result.append("박")
        } else {
            result.append("수")
        }
    }
    
    return result.reduce("", +)
}

solution(1)

// Comment
// if 문이 너무 길어져서 다른 방법을 생각해 봄.

// 두 번째 풀이
func solution2(_ n:Int) -> String {
    
    var result: [String] = []
    
    if n < 1 || n > 10000 {
        return ""
    }
    
    for i in 1...n {
        i % 2 == 1 ? result.append("수") : result.append("박")
    }
    
    return result.reduce("", +)
}

solution2(5)

// Comment
// 삼항 연산자를 이용해 코드를 조금 줄여보았음.. 하지만 뭔가 깔끔하지는 않음.

// 모범답안
func solution3(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}

// Comment
// 이건 다 아는건데도 이렇게 생각을 못했다...ㅋㅋㅋㅋ

// 모범답안2
func solution4(_ n: Int) -> String {
    return (0..<n).map{($0 % 2 == 0 ? "수":"박")}.reduce("", +)
}

// Comment
// 이 분 풀이가 내가 가장 원했던 풀이. 맵과 리듀스를 생각은 해지만 정작 어떻게 구현해할지 몰라서 난감했는데, 좋은 풀이.
