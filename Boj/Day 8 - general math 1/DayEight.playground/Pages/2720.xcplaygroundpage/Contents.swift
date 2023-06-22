//: [Previous](@previous)

import Foundation

let input = Int(readLine()!) ?? 0

for _ in 0..<input {
    let changes = Int(readLine()!) ?? 0
    
    var resultCount: [Int] = []
    var remainChanges: Int = 0
    
    var isDimeNeeded: Bool = false
    var isNickelNeeded: Bool = false
    var isPennyNeeded: Bool = false
    
    let quarterCount: Int = changes / 25
    resultCount.append(quarterCount)
    
    if changes % 25 == 0 {
        isDimeNeeded = false
        isNickelNeeded = false
        isPennyNeeded = false
    } else {
        remainChanges = changes - (25 * quarterCount)
        
        isDimeNeeded = true
    }
    
    if isDimeNeeded {
        let dimeCount: Int = remainChanges / 10
        resultCount.append(dimeCount)
        
        if remainChanges % 10 == 0 {
            isNickelNeeded = false
            isPennyNeeded = false
        } else {
            remainChanges = remainChanges - (10 * dimeCount)
            
            isNickelNeeded = true
        }
    } else {
        resultCount.append(0)
    }
    
    if isNickelNeeded {
        let nickelCount: Int = remainChanges / 5
        resultCount.append(nickelCount)
        
        if remainChanges % 5 == 0 {
            isPennyNeeded = false
        } else {
            remainChanges = remainChanges - (5 * nickelCount)
            
            isPennyNeeded = true
        }
    } else {
        resultCount.append(0)
    }
    
    if isPennyNeeded {
        resultCount.append(remainChanges)
    } else {
        resultCount.append(0)
    }
    
    
    print(resultCount.map { String($0) }.joined(separator: " "))
    
}
