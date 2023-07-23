//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> [Int] {
    var arr: Set<Int> = []
    var remain: Int = n
    
    while remain != 1 {
        for i in 2...10000 {
            if remain % i == 0 {
                arr.insert(i)
                remain = remain / i
                
                print(remain)
                break
            }
        }
    }
    
    return arr.sorted()
}

solution(420)
