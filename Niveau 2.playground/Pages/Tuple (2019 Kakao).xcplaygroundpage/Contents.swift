//: [Previous](@previous)

import Foundation

func solution2(_ s:String) -> [Int] {

    var arr: [[Int]] = []
    var set = Set<Int>()
    var setArr: [Set<Int>] = []
    var resultArr: [Int] = []
    
    var string = s.replacingOccurrences(of: "{{", with: "").replacingOccurrences(of: "}}", with: "").components(separatedBy: "},{")

    
    for i in 0..<(string.count-1) {
        for j in (i+1)..<(string.count) {
            if string[i].count > string[j].count {
                string.swapAt(i, j)
            }
        }
        
    }
    
    print(string)
    
    string.forEach {
//        $0.sorted(by: <)
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

    if setArr.count == 1 {
        resultArr.append(contentsOf: setArr[0])
        return resultArr
    }
    
    for i in 0..<(setArr.count-1) {
        
        if i == 0 {
            resultArr.append(contentsOf:setArr[i].intersection(setArr[i+1]))
        }
        
        resultArr.append(contentsOf: setArr[i+1].subtracting(setArr[i]))
    }
     
    return resultArr
}




//solution2("{{2},{2,1},{2,1,3},{2,1,3,4}}")
solution2("{{123}}")

func solution(_ s:String) -> [Int] {

    var str = s.replacingOccurrences(of: "{{", with: "").replacingOccurrences(of: "}}", with: "").components(separatedBy: "},{")

    print(str)
    return []
}

solution("{{2},{2,1},{2,1,3},{2,1,3,4}}")
