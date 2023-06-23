//: [Previous](@previous)

import Foundation

let input = Int(readLine()!) ?? 0

var prime: [Int] = []

if input != 1 {
    var remain = input
    
    for i in 2...input {
        if remain == 1 {
            break
        }
        
        while remain % i == 0 {
            remain = remain / i
            prime.append(i)
        }
    }
    
    prime.forEach { print($0) }
}
