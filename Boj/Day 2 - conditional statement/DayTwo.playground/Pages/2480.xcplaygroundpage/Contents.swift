//: [Previous](@previous)

import Foundation

let currentTime = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

let firstCon = currentTime[0] == currentTime[1]
let secondCon = currentTime[1] == currentTime[2]
let thirdCon = currentTime[0] == currentTime[2]

if firstCon && thirdCon {
    print(10000 + (currentTime[0] * 1000))
} else if (firstCon && !secondCon) || (!firstCon && secondCon) {
    print(1000 + (currentTime[1] * 100))
} else if (!secondCon && thirdCon) {
    print(1000 + (currentTime[0] * 100))
} else {
    if currentTime[0] > currentTime[1] {
        if currentTime[0] > currentTime[2] {
            print(currentTime[0] * 100)
        } else {
            print(currentTime[2] * 100)
        }
    } else {
        if currentTime[1] > currentTime[2] {
            print(currentTime[1] * 100)
        } else {
            print(currentTime[2] * 100)
        }
    }
}
