import UIKit

import Foundation

let n = readLine()!
    .components(separatedBy: [" "])
    .map { Int($0)! }

print("a = \(n[0])")
print("b = \(n[1])")
