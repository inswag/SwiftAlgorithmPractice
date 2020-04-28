//: [Previous](@previous)

import Foundation

var test = "try hello world"

// 나의 풀이

func solution(_ s:String) -> String {
    
    var complete: [String] = []
    var resultString = ""
    
    s.components(separatedBy: " ").forEach {
        var tempArr: [String] = []
        
        for i in 0..<Array($0).count {
            i % 2 == 0 ? tempArr.append(Array($0)[i].uppercased()) : tempArr.append(Array($0)[i].lowercased())
        }
        
        complete.append(tempArr.reduce("", +))
    }
    
    for i in 0..<complete.count {
        resultString += complete[i]
        
        if i != (complete.count - 1) {
            resultString += " "
        }
    }
    
    return resultString
}

solution(test)

// 좋은 풀이

func solution2(_ s:String) -> String {
    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
    return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
}


func solution3(_ s:String) -> String {
    let a = s.components(separatedBy: " ").map {
//        print($0.enumerated())
        $0.enumerated().map {
            $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased()
        }
    }
    
    print(a)
    return ""
//    return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
}

solution3(test)
