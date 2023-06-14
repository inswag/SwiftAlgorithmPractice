//: [Previous](@previous)

import Foundation

let firstNum = (Int(readLine()!) ?? 0)
let firstTwo = (Int(readLine()!) ?? 0)

if firstNum > 0 {
    if firstTwo > 0 {
        print("1")
    } else {
        print("4")
    }
} else {
    if firstTwo > 0 {
        print("2")
    } else {
        print("3")
    }
}
