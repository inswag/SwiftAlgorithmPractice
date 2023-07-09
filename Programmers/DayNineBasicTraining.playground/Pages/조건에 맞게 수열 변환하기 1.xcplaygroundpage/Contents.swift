//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = []
    
    arr.forEach {
        if $0 >= 50 && $0 % 2 == 0 {
            result.append($0 / 2)
        } else if $0 < 50 && $0 % 2 != 0 {
            result.append($0 * 2)
        } else {
            result.append($0)
        }
    }
    
    return result
}

/*
 다른 사람의 풀이
 - 변수를 따로 선언하지 않고 할 수 있는 방법은 없을까?
 - map 을 사용하려고 했는데 if 문을 사용할 수 있없음..
 - 아 return 을 선언해줘야 map 을 쓸수 있었음...
 */

func solution2(_ arr:[Int]) -> [Int] {
    return arr.map {
        if $0 < 50 && $0 % 2 == 1 {
            return $0 * 2
        } else if $0 >= 50 && $0 % 2 == 0 {
            return $0 / 2
        } else {
            return $0
        }
    }
}
