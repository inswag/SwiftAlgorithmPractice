import UIKit

let maxLine: Int = Int(readLine()!) ?? 0

for i in 1...maxLine {
    let str = String(repeating: " ", count: maxLine - i) + String(repeating: "*", count: (2 * i) - 1)
    print(str)
}

for i in 1..<maxLine {
    let str = String(repeating: " ", count: i) + String(repeating: "*", count: 2 * (maxLine - i) - 1)
    print(str)
}
