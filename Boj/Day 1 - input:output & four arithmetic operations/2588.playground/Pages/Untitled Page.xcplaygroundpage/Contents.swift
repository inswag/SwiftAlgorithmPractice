import UIKit

let lineOne = Int(readLine()!) ?? 0
let lineTwo = Int(readLine()!) ?? 0

let first = ((lineTwo % 100) % 10)
let second = ((lineTwo % 100) / 10)
let third = (lineTwo / 100)

print(lineOne * first)
print(lineOne * second)
print(lineOne * third)
print(lineOne * lineTwo)
