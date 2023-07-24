//: [Previous](@previous)

import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let newSpell = spell.sorted().joined()
    var count: Int = 0
    
    dic.map { $0.sorted() }.forEach {
        if String($0) == newSpell {
            count += 1
        }
    }
    
    return count == 0 ? 2 : 1
}

solution(["p", "o", "s"]    , ["sod", "eocd", "qixm", "adio", "soo"]    )
