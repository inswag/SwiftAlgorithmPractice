import UIKit

let testCaseCount = Int(readLine()!) ?? 0

for _ in (0..<testCaseCount) {
    print(readLine()!.split(separator: " ").map { Int($0) ?? 0 }.reduce(0, +))
}
