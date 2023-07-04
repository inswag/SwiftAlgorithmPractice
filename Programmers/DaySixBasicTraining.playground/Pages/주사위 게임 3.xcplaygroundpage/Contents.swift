//: [Previous](@previous)

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let firstCon = (a == b) && (a == c) && (a == d)
    let secCon = (a == b && b == c) || (a == b && b == d) || (a == c && c == d) || (b == c && c == d)
    let thirdCon = (a == b && c == d) || (b == c && a == d) || (a == c && b == d)
    let fourthCon = (a == b) && (c != d) || (a == c) && (b != d) || (a == d) && (b != c) || (b == c) && (a != d) || (b == d) && (a != c) || (c == d) && (a != b)
    
    if firstCon {
        return 1111 * a
    } else if secCon {
        if (a == b) && (b == c) {
            return (10 * a + d) * (10 * a + d)
        } else if (a == b) && (b == d) {
            return (10 * a + c) * (10 * a + c)
        } else if (a == c) && (c == d) {
            return (10 * a + b) * (10 * a + b)
        } else {
            return (10 * b + a) * (10 * b + a)
        }
    } else if thirdCon {
        if a == b {
            return (a + c) * (abs(a - c))
        } else if b == c {
            return (a + c) * (abs(a - c))
        } else {
            return (a + b) * (abs(a - b))
        }
    } else if fourthCon {
        if (a == b) && (c != d) {
            return c * d
        } else if (a == c) && (b != d) {
            return b * d
        } else if (a == d) && (b != c) {
            return b * c
        } else if (b == c) && (a != d) {
            return a * d
        } else if (b == d) && (a != c) {
            return a * c
        } else if (c == d) && (a != b) {
            return a * b
        }
    } else {
        let dice = [a, b, c, d].sorted()
        return dice.first!
    }
    
    return 0
}

solution(4, 1, 4, 4)
