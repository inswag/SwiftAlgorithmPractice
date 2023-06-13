import Foundation

let line = readLine()!
let minus = line.split(separator: " ").map { Int($0) }
print(minus[0]! - minus[1]!)
