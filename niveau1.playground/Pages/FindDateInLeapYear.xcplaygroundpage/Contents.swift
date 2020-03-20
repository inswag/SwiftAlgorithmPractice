//: [Previous](@previous)

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    
    let endMonth: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    print(endMonth.reduce(0, +))
    
    var sum: Int = 0
    
    (0..<a-1).forEach { sum += endMonth[$0]}
    sum += b
    
    switch sum % 7 {
    case 1:
        return "FRI"
    case 2:
        return "SAT"
    case 3:
        return "SUN"
    case 4:
        return "MON"
    case 5:
        return "TUE"
    case 6:
        return "WED"
    case 0:
        return "THU"
    default:
        return "ERROR"
    }
}

solution(2, 2)
