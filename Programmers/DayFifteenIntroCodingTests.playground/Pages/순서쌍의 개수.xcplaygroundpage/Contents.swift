//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    var count: Int = 0
    
    for i in 1...n {
        if i * (n / i) == n {
            count += 1
        }
    }
    
    return count
}

/*
 다른 풀이
 - 사실 약수를 구하는 문제였어서 n 을 나눴을 때 나머지가 0이 되는 경우를 구하면 되는 문제였다.
*/

func solution2(_ n: Int) -> Int {
    (1...n).filter { n % $0 == 0 }.count
}

