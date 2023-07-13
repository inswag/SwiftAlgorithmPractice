//: [Previous](@previous)

import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    let dOne = date1.map { String($0) }.joined(separator: "-")
    let dTwo = date2.map { String($0) }.joined(separator: "-")
    
    let formatter = DateFormatter.init()
    formatter.dateFormat = "yyyy-MM-dd"
    
    let one = formatter.date(from: dOne)!
    let two = formatter.date(from: dTwo)!
    
    return one.timeIntervalSince(two) >= 0 ? 0 : 1
}
