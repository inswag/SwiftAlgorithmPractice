//: [Previous](@previous)

import Foundation

let line = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
let earlyMin: Int = 45

if line.last! - earlyMin >= 0 {
    print("\(line.first!) \(line.last! - earlyMin)")
} else {
    if line.first! == 0 {
        print("23 \(60 + (line.last! - earlyMin))")
    } else {
        print("\(line.first! - 1) \(60 + (line.last! - earlyMin))")
    }
}
