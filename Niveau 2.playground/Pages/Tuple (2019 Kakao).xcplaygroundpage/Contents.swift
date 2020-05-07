//: [Previous](@previous)

import Foundation

func solution(_ s:String) -> [Int] {
//    let string = s.split(separator: ",{").map {
//        $0.replacingOccurrences(of: "{", with: "[").replacingOccurrences(of: "}", with: "]")
//    }
    
    var arr: [[Int]] = []
    var set = Set<Int>()
    var setArr: [Set<Int>] = []
    var sortedArr: [Set<Int>] = []
    
    let string = s.replacingOccurrences(of: "{{", with: "").replacingOccurrences(of: "}}", with: "").components(separatedBy: "},{")

    string.forEach {
        print($0)
        arr.append($0.split(separator: ",").map { Int($0)! })
    }
    
    print("arr : ", arr)
    
    for i in 0..<arr.count {
        
        for j in arr[i] {
            set.insert(j)
        }
        
        setArr.append(set)
        
    }
    
    print("Set arr : ", setArr)

    
    return []
}

solution("{{2},{2,1},{2,1,3},{2,1,3,4}}")
