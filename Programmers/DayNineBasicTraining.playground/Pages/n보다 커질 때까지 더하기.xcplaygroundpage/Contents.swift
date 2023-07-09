//: [Previous](@previous)

import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var result: Int = 0
    
    for number in numbers {
        if result > n {
            return result
        } else {
            result += number
        }
    }
    
    return result
}

/*
 다른 사람의 풀이
 - 어떻게 하면 더 깔끔하게 풀 수 있을까 생각이 안났음.
 - reduce 내부에서 삼항연산자를 이용해 원하는 값을 리턴할 수 있었다.
 */

func solution2(_ numbers:[Int], _ n:Int) -> Int {
    return numbers.reduce(0) { $0 > n ? $0 : $0 + $1 }
}
