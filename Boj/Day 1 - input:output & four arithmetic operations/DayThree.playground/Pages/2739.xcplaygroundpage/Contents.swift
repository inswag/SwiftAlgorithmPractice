//: [Previous](@previous)

import Foundation

let line = Int(readLine()!) ?? 0
(1...9).map { "\(line) * \($0) = \(line * $0)" }.forEach { print($0) }
