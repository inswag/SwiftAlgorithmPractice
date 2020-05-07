//: [Previous](@previous)

import Foundation

//print("First Case")

for i in (1...10).reversed() {
    print(i)
}

//print("Second Case")

for i in stride(from: 10, to: 1, by: -1) {
    print(i)
}

//print("Third Case")

for i in stride(from: 10, through: 1, by: -1) {
    print(i)
}


