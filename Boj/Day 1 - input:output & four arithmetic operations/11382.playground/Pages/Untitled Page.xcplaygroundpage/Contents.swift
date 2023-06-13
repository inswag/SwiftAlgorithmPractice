import UIKit

print(readLine()!
    .split(separator: " ")
    .map { Int($0) ?? 0 }
    .reduce(0, +))
