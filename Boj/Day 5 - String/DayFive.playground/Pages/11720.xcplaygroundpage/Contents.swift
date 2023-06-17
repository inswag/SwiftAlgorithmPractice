//: [Previous](@previous)

import Foundation

if let numCount = readLine() {
    if let numbers = readLine() {
        var sum: Int = 0
        
        numbers.forEach {
            sum += Int(String($0)) ?? 0
        }
        
        print(sum)
    }
}
