//: [Previous](@previous)

import Foundation

if let caseCount = Int(readLine()!) {
    for _ in 0..<caseCount {
        let inputInfo = readLine()!
            .split(separator: " ")
        
        let repeatCount = inputInfo.first!
        let word = inputInfo.last!
        
        for w in word {
            for _ in 0..<Int(repeatCount)! {
                print(w, terminator: "")
            }
        }
        
        print("")
    }
}
