//: [Previous](@previous)

import Foundation

// 실패 사례 1

func solution2(_ dartResult:String) -> Int {

    var scores: [Int] = []
    var areas: [String.Element] = []
    var options: [String.Element] = []
    
    Array(dartResult).forEach {
        switch $0 {
        case "S", "D", "T":
            areas.append($0)
        case "*", "#":
            options.append($0)
        default:
            if let score = $0.wholeNumberValue {
                scores.append(score)
            }
            
        }
    }
    print("scores: ", scores)
    print("areas: ", areas)
    print("options: ", options)
    return 0
}

// Comments
// * 의 위치를 추적할 수 없음. 잘못된 풀이.

// 실패 사례 2

func solution3(_ dartResult:String) -> Int {
    
//    var scores: [Int] = []
    var areas: [String.Element] = []
    var options: [String.Element] = []
    
//    var total: Int = 0
    
    var firstTry: Int = 0
    var secondTry: Int = 0
    var thirdTry: Int = 0
    
    Array(dartResult).enumerated().forEach {
        switch $0.element {
        case "S", "D", "T":
            areas.append($0.element)
        case "*", "#":
            options.append($0.element)
        default:
            // 10s*10s*10s*
            if $0.offset == 0, let score = $0.element.wholeNumberValue {
                firstTry += score
            }
            
            if $0.offset == 1 && $0.element == "0" {
                firstTry = 10
            }
            
            if $0.offset == 2, let score = $0.element.wholeNumberValue {
                secondTry += score
            }
            
            if $0.offset == 3, let score = $0.element.wholeNumberValue {
                secondTry += score
            }
            
            if $0.offset == 4, let score = $0.element.wholeNumberValue {
                thirdTry += score
            }
            
            if $0.offset == 5, let score = $0.element.wholeNumberValue {
                thirdTry += score
            }
            
            if $0.offset == 6, let score = $0.element.wholeNumberValue {
                thirdTry += score
            }
        }
    }
    print("firstTry: ", firstTry)
    print("secondTry: ", secondTry)
    print("thirdTry: ", thirdTry)
    return 0
}

// 실패 사례 3

func solution4(_ dartResult:String) -> Int {
    
//    var scores: [Int] = []
    var areas: [String.Element] = []
    var options: [String.Element] = []
    
//    var total: Int = 0
    
    var firstTry: Int = 0
    var secondTry: Int = 0
    var thirdTry: Int = 0
    
    Array(dartResult).enumerated().forEach {
        switch $0.element {
        case "S", "D", "T":
            areas.append($0.element)
        case "*", "#":
            options.append($0.element)
        default:
            // 10s*10s*10s*
            if $0.offset == 0, let score = $0.element.wholeNumberValue {
                firstTry += score
            }
            
            if $0.offset == 1 && $0.element == "0" {
                firstTry = 10
            }
            
            if $0.offset == 2, let score = $0.element.wholeNumberValue {
                secondTry += score
            }
            
            if $0.offset == 3, let score = $0.element.wholeNumberValue {
                secondTry += score
            }
            
            if $0.offset == 4, let score = $0.element.wholeNumberValue {
                thirdTry += score
            }
            
            if $0.offset == 5, let score = $0.element.wholeNumberValue {
                thirdTry += score
            }
            
            if $0.offset == 6, let score = $0.element.wholeNumberValue {
                thirdTry += score
            }
        }
    }
    print("firstTry: ", firstTry)
    print("secondTry: ", secondTry)
    print("thirdTry: ", thirdTry)
    return 0
}

// 성공 사례

func solution(_ dartResult:String) -> Int {
    let text = dartResult as NSString
    let regex = try! NSRegularExpression(pattern: "\\d+\\w\\W|\\d+\\w", options: .caseInsensitive)
    let result = regex.matches(in: dartResult,
                               options: [],
                               range: NSRange(location: 0,
                                              length: text.length)).map {
                                                text.substring(with: $0.range) }

    if result.count < 3 { return 0 }
    
    print(result)
    
    var firstScore: Int = 0
    var secondScore: Int = 0
    var thirdScore: Int = 0
    
    for i in 0..<result.count {
        let arr = Array(result[i])
        
        if i == 0 {
            for j in arr {
                switch j {
                case "S":
                    firstScore *= 1
                case "D":
                    firstScore *= firstScore
                case "T":
                    firstScore *= firstScore * firstScore
                case "*":
                    firstScore *= 2
                case "#":
                    firstScore *= -1
                case "0":
                    if arr[0] == "1" {
                        firstScore += 9
                    } else {
                        firstScore += 0
                    }
                default:
                    if let score = j.wholeNumberValue {
                        firstScore += score
                    }
                }
            }
        }
        
        if i == 1 {
            for j in arr {
                switch j {
                case "S":
                    secondScore *= 1
                case "D":
                    secondScore *= secondScore
                case "T":
                    secondScore *= secondScore * secondScore
                case "*":
                    firstScore *= 2
                    secondScore *= 2
                case "#":
                    secondScore *= -1
                case "0":
                    if arr[0] == "1" {
                        secondScore += 9
                    } else {
                        secondScore += 0
                    }
                default:
                    if let score = j.wholeNumberValue {
                        secondScore += score
                    }
                }
            }
        }
        
        if i == 2 {
            for j in arr {
                switch j {
                case "S":
                    thirdScore *= 1
                case "D":
                    thirdScore *= thirdScore
                case "T":
                    thirdScore *= thirdScore * thirdScore
                case "*":
                    secondScore *= 2
                    thirdScore *= 2
                case "#":
                    thirdScore *= -1
                case "0":
                    if arr[0] == "1" {
                        thirdScore += 9
                    } else {
                        thirdScore += 0
                    }
                default:
                    if let score = j.wholeNumberValue {
                        thirdScore += score
                    }
                }
            }
        }
    }
    
    print(firstScore)
    print(secondScore)
    print(thirdScore)
    print("Total sum : ",firstScore + secondScore + thirdScore)
    return firstScore + secondScore + thirdScore
}

solution("1S2D*3T")
solution("1D2S#10S")
solution("1D2S0T")
solution("1S*2T*3S")
solution("1D#2S*3S")
solution("1T2D3D#")
solution("1D2S3T*")
solution("10D*0T#0S")
solution("0D*10T#0S")
solution("0D*0T#10S")
solution("10D*10T#10S*")
