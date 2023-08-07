//: [Previous](@previous)

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    let firstPerson = [1,2,3,4,5]
    let secondPerson = [2,1,2,3,2,4,2,5]
    let thirdPerson = [3,3,1,1,2,2,4,4,5,5]
    
    var firstAnswerCount: Int = 0
    var secondAnswerCount: Int = 0
    var thirdAnswerCount: Int = 0
    
    for i in 0..<answers.count {
        
        if firstPerson[i % 5] == answers[i] {
            firstAnswerCount += 1
        }
        
        if secondPerson[i % 8] == answers[i] {
            secondAnswerCount += 1
        }
        
        if thirdPerson[i % 10] == answers[i] {
            thirdAnswerCount += 1
        }
    }
    
    let count: [String: Int] = ["firstPerson": firstAnswerCount,
                                "secondPerson": secondAnswerCount,
                                "thirdPerson": thirdAnswerCount]
    
    if count["firstPerson"]! > count["secondPerson"]! {
        if count["firstPerson"]! > count["thirdPerson"]! {
            return [1]
        } else if count["firstPerson"] == count["thirdPerson"] {
            return [1,3]
        }
        return [3]
    } else if count["firstPerson"]! < count["secondPerson"]! {
        if count["secondPerson"]! > count["thirdPerson"]! {
            return [2]
        } else if count["secondPerson"]! == count["thirdPerson"]! {
            return [2,3]
        }
        return [3]
    } else if count["firstPerson"] == count["secondPerson"] {
        if count["firstPerson"]! > count["thirdPerson"]! {
            return [1,2]
        } else if count["firstPerson"] == count["thirdPerson"] {
            return [1,2,3]
        } else if count["firstPerson"]! < count["thirdPerson"]! {
            return [3]
        }
    }
    
    return [0]
}
