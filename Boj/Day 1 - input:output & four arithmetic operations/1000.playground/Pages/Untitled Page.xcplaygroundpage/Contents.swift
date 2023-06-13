import Foundation

let line = readLine()!
let lineArr = line.components(separatedBy: " ")

var sum: Int = 0

for num in lineArr {
    sum += Int(num) ?? 0
}

print(sum)
