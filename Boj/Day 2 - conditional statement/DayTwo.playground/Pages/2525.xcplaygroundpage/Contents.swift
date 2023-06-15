//: [Previous](@previous)

import Foundation

let currentTime = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
let cookingTime: Int = Int(readLine()!) ?? 0

if currentTime.last! + cookingTime >= 60 {
    let overHour = (currentTime.last! + cookingTime) / 60
    let overMin = (currentTime.last! + cookingTime) % 60
    
    if currentTime.first! + overHour > 23 {
        print((currentTime.first! + overHour) % 24, overMin)
    } else {
        print(currentTime.first! + overHour, overMin)
    }
} else {
    print(currentTime.first!, (currentTime.last! + cookingTime))
}
