import UIKit

let line = readLine()!
let numbers = line.split(separator: " ").map { Int($0) ?? 0 }

let firstNum: Int = numbers[0]
let secondNum: Int = numbers[1]
let thirdNum: Int = numbers[2]

let firstLine: Int = (firstNum + secondNum) % thirdNum
let secondLine: Int = ((firstNum % thirdNum) + (secondNum + thirdNum)) % thirdNum
let thirdLine: Int = (firstNum * secondNum) % thirdNum
let fourthLine: Int = ((firstNum % thirdNum) * (secondNum % thirdNum)) % thirdNum


print(firstLine)
print(secondLine)
print(thirdLine)
print(fourthLine)
