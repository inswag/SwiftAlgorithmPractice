import UIKit

let line = readLine()!
let result = line
    .split(separator: " ")
    .map { Int($0) ?? 0 }

print(result[0] + result[1])
print(result[0] - result[1])
print(result[0] * result[1])
print(result[0] / result[1])
print(result[0] % result[1])
