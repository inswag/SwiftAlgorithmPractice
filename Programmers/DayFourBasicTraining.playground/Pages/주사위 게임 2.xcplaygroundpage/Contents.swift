//: [Previous](@previous)

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    // 세 숫자가 모두 다른 경우
    // 세 숫자 중 두 숫자만 같은 경우
    // 세 숫자가 모두 같은 경우
    
    let firstCondition = (a != b && a != c && b != c)
    let secCondition = ((a == b) && (a != c)) || ((b == c) && (a != b)) || ((a == c) && (a != b))
    let thirdCondition = (a == b) && (b == c) && (a == c)
    
    if firstCondition {
        return a + b + c
    } else if secCondition {
        return (a + b + c) * ((a*a) + (b*b) + (c*c))
    } else if thirdCondition {
        return (a + b + c) * ((a*a) + (b*b) + (c*c)) * ((a*a*a) + (b*b*b) + (c*c*c))
    }
    
    return 0
}

solution(5, 3, 3)
