//: [Previous](@previous)

import Foundation

func solution(_ numbers:[Int]) -> String {
    let sortedNumbers = numbers.sorted {
        Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }
    
    return sortedNumbers.first! == 0 ? "0" : sortedNumbers.reduce("") { $0 + "\($1)" }
}

solution([6, 10, 2])
solution([3, 30, 34, 5, 9])
solution([555, 565, 566, 55, 56, 5, 54, 544, 549])

/*
 정렬된 순서 : 566 56 565 5 55 555 549 54 544
 출력 : "566 56 565 5 55 555 549 545 44"
 */
