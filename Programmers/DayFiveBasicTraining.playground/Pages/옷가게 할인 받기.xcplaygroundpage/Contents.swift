//: [Previous](@previous)

import Foundation

func solution(_ price:Int) -> Int {
    if price < 100000 {
        return price
    }
    
    if price >= 500000 {
        return Int(Double(price) * 0.8)
    } else if price >= 300000 {
        return Int(Double(price) * 0.9)
    } else if price >= 100000 {
        return Int(Double(price) * 0.95)
    } else {
        return price
    }
}

/*
 다른 사람의 풀이
 - if 문 보다 switch 문의 속도가 더 빠른건가.. 조금 이상하지만 바로 리턴해주니 해결이 되었다. 스위치 문의 문제만은 아닌듯.
 */

func solution2(_ price:Int) -> Int {
    switch price {
    case 100000..<300000:
        return Int(Double(price) * 0.95)
    case 300000..<500000:
        return Int(Double(price) * 0.9)
    case 500000...1000000:
        return Int(Double(price) * 0.8)
    default:
        return price
    }
}
