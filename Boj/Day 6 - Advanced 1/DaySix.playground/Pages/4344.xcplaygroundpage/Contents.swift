//: [Previous](@previous)

import Foundation

if let testCase = Int(readLine()!) {
    for count in 0..<testCase {
        var inputData = readLine()!
            .split(separator: " ")
            .map { Int($0) ?? 0 }
        
        let totalCount = inputData.first ?? 0
        inputData.removeFirst()
        
        let average = inputData.reduce(0, +) / totalCount
        let successCount = inputData.filter { $0 > average }.count
        
        let ratio = (Double(successCount) / Double(totalCount)) * Double(100)
        
        print(String(format: "%.3f", ratio) + "%")
    }
}
