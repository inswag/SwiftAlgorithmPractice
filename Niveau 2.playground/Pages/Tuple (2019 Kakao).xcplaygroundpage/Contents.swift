//: [Previous](@previous)

import Foundation

// 첫 통과 코드
func solution3(_ s:String) -> [Int] {
    
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
    
    string.forEach {
        arr.append($0.split(separator: ",").map { Int($0)! })
    }
    
    for i in 0..<arr.count {
        for j in arr[i] {
            set.insert(j)
        }
        setArr.append(set)
    }

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

// 수정 버전
func solution2(_ s:String) -> [Int] {
    var set = Set<Int>()
    var setArr: [Set<Int>] = []
    var resultArr: [Int] = []

    let string = s
        .replacingOccurrences(of: "{{", with: "")
        .replacingOccurrences(of: "}}", with: "")
        .components(separatedBy: "},{")
        .map { $0.split(separator: ",").map { Int($0)! } }
        .sorted { $0.count < $1.count }


    for i in 0..<string.count {
        for j in string[i] {
            set.insert(j)
        }
        setArr.append(set)
    }

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
solution2("{{2},{2,1},{2,1,3},{2,1,3,4}}")

// 승진이 버전
func solution(_ s:String) -> [Int] {

    var setArr: [Int] = []
    
    var str = s
        .replacingOccurrences(of: "{{", with: "")
        .replacingOccurrences(of: "}}", with: "")
        .components(separatedBy: "},{")
        .map { $0.split(separator: ",").map { Int($0)! } }
        .sorted { $0.count < $1.count }
        .flatMap { $0 }
    
    // flatMap 을 사용해서 중복만 걸러내는 사고력 좋았다.
    str.forEach {
        if setArr.contains($0) { return }
        setArr.append($0)
    }
    
    return []
}

solution("{{2},{2,1},{2,1,3},{2,1,3,4}}")
