//: [Previous](@previous)

import Foundation

let line = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

if line.first! > line.last! {
    print(">")
} else if line.first! < line.last! {
    print("<")
} else {
    print("==")
}
