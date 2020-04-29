//: [Previous](@previous)

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    
//    if m == 0 {
//        return [n, 0]
//    } else if n == 0 {
//        return [m, 0]
//    }
    
    var first: Int = n
    var second: Int = m
    
    if second > first {
        first = m
        second = n
    }
    
    
    
    if first % second != 0 {
       first = first % second
        solution(first, second)
    }
    
    let lcd = (n * m) / first
    return [first, lcd]
}

solution(12, 18)
solution(3, 12)
solution(2, 5)


func gcd(_ n:Int, _ m:Int) -> Int {
    if m == 0 {
        return n
    } else {
        return gcd(m, n % m)
    }
}

func solution2(_ n:Int, _ m:Int) -> [Int] {
    
    let gcdResult = gcd(n, m)
    let lcdResult = (n * m) / gcdResult
    return [gcdResult, lcdResult]
}

solution2(12, 18)
solution2(3, 12)
solution2(2, 5)
