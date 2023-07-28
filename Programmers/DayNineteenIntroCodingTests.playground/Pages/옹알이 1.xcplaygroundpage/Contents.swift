//: [Previous](@previous)

import Foundation

func solution(_ babbling:[String]) -> Int {
    let babyCanSay: [String] = ["aya", "ye", "woo", "ma"]
    
    var result: [String] = babbling.map {
        var converted = $0
        
        for say in babyCanSay {
            converted = converted
                .replacingOccurrences(of: say, with: " ")
        }
        
        print(converted)
        return converted
    }
    
    return result.filter { $0.replacingOccurrences(of: " ", with: "") == "" }.count
}

solution(["aya", "yee", "u", "maa", "wyeoo"]    )
solution(["ayaye", "uuuma", "ye", "yemawoo", "ayaa"]    )
