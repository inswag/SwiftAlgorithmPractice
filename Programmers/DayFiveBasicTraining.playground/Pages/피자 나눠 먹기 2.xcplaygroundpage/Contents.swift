//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    // 사람 n
    // 피자는 1판에 6조각
    // 모두 같은 수의 피자조각을 먹어야 한다.
    // 그렇다면 6 * n판 을 사람 수 n 으로 나누었을 때 나머지가 0이어야 한다.
    
    for i in 1...600 {
        if (6 * i) % n == 0 {
            return i
        }
    }
    
    return 1
}

/*
 다른 사람의 풀이
 - 나머지가 0이 되어야 한다는 것은 결국 n은 6의 공약수가 된다. 는 것을 활용한 풀이
 */

func solution2(_ n:Int) -> Int {
    // n과 6의 최대공약수로 n을 나눈 값을 리턴
    let div: [Int] = [6,3,2,1].filter {n % $0 == 0}
    return (n / div[0])
}
