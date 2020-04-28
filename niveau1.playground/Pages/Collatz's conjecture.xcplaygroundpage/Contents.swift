//: [Previous](@previous)

import Foundation

func solution(_ num:Int) -> Int {
    
    var collatz: Int = num
    var count: Int = 0
    
    for i in 1...500 {

        if collatz != 1 {
            collatz = collatz % 2 == 0 ? collatz / 2 : collatz * 3 + 1
            count += 1
        }
        
        if collatz == 1 {
           return count
        }
    }

    return -1
}


solution(16)
