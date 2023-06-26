//: [Previous](@previous)

import Foundation

let firstAngle = Int(readLine()!) ?? 0
let secondAngle = Int(readLine()!) ?? 0
let thirdAngle = Int(readLine()!) ?? 0

let angleSum = firstAngle + secondAngle + thirdAngle

if angleSum == 180 {
    if (firstAngle == 60 && secondAngle == 60 && thirdAngle == 60) {
        print("Equilateral")
    } else {
        if (firstAngle == secondAngle) || (firstAngle == thirdAngle) || (secondAngle == thirdAngle) {
            print("Isosceles")
        } else {
            print("Scalene")
        }
    }
} else {
    print("Error")
}
