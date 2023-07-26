//: [Previous](@previous)

import Foundation

func solution(_ numer1:Int,
              _ denom1:Int,
              _ numer2:Int,
              _ denom2:Int) -> [Int] {
    let lcm = getLCM(denom1, denom2)
    
    let firstMultiple = getMultiples(denom1, lcm)
    let secMultiple = getMultiples(denom2, lcm)
    
    let newNumer1 = numer1 * firstMultiple
    let newNumer2 = numer2 * secMultiple
    
    
    let firstResult = newNumer1 + newNumer2
    
    let gcd = getGCD(firstResult, lcm)
    return [(newNumer1 + newNumer2) / gcd, lcm / gcd]
}

// greatest common divisor
func getGCD(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : getGCD(b, a % b)
}

// Least common multiple
func getLCM(_ a: Int, _ b: Int) -> Int {
    return (a * b) / getGCD(a, b)
}

func getMultiples(_ a: Int, _ b: Int) -> Int {
    return b / a
}
