//: [Previous](@previous)

import Foundation

func converter(count: Double, grade: String) -> Double {
    switch grade {
    case "A+":
        return count * 4.5
    case "A0":
        return count * 4.0
    case "B+":
        return count * 3.5
    case "B0":
        return count * 3.0
    case "C+":
        return count * 2.5
    case "C0":
        return count * 2.0
    case "D+":
        return count * 1.5
    case "D0":
        return count * 1.0
    case "F":
        return count * 0.0
    default:
        return 0.0
    }
}

var convertedTotal: Double = 0.0
var countTotal: Double = 0.0

for _ in 0..<20 {
    var inputInfo = readLine()!.split(separator: " ")
    inputInfo.removeFirst()
    
    if inputInfo.last! != "P" {
        convertedTotal += converter(count: Double(inputInfo.first!) ?? 0.0, grade: String(inputInfo.last!))
        countTotal += Double(inputInfo.first!) ?? 0.0
    }
}

print(convertedTotal / countTotal)
