//: [Previous](@previous)

import Foundation

let inputLine = (Int(readLine()!) ?? 0)
let inputNum = inputLine / 4

var result: [String] = ["int"]

if inputNum > 0 {
    for _ in (0..<inputNum) {
        result.insert("long", at: 0)
    }
    
    print(result.joined(separator: " "))
} else {
    print("long int")
}
