//: [Previous](@previous)

import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let avgArr = score.map { $0.reduce(0, +) }
    
    var grade: Int = 1
    var gradeDic: [Int: Int] = [:]

    for avg in avgArr.sorted(by: > ) {
        if gradeDic[avg] == nil {
            gradeDic[avg] = grade
            grade += 1
        } else {
            grade += 1
        }
    }
    
    return avgArr.map {
        return gradeDic[$0]!
    }
}

solution([[80, 70], [70, 80], [30, 50], [90, 100], [100, 90], [100, 100], [10, 30]]    )
