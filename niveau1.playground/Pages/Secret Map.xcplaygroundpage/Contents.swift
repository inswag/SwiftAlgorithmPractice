//: [Previous](@previous)

import Foundation

func solution2(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var answer: [String] = []
    
    if n != arr1.count || n != arr2.count { return [""] }
    
    var firstBinaryArr = arr1.map { Int(String($0, radix: 2, uppercase: false))! }
    var secondBinaryArr = arr2.map { Int(String($0, radix: 2, uppercase: false))! }
    
    print(firstBinaryArr[3] | secondBinaryArr[0])
    
    for i in 0..<n {
        
        var num = arr1[i] | arr2[i]
        print("num : ", num)
        var s = String(num, radix: 2, uppercase: false)
        print("s : ", s)
        var result = ""
        
        for k in 0..<s.count {
            
//            if s.index(of: k) == "1" {
//                result += "#"
//            } else {
//                result += " "
//            }
        }
        
        
    }
    
    
    
    print(firstBinaryArr)
    print(secondBinaryArr)
    
    return answer
}

// Solution 2 : Success

func pad(string : String, toSize: Int) -> String {
    var padded = string
    for _ in 0..<(toSize - string.count) {
        padded = "0" + padded
    }
    return padded
}

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var answer: [String] = []
    
    if n != arr1.count || n != arr2.count { return ["Invaild"] }
    
    let firstBinaryArr = arr1.map { pad(string: String($0, radix: 2, uppercase: false), toSize: n) }
    let secondBinaryArr = arr2.map { pad(string: String($0, radix: 2, uppercase: false), toSize: n) }
    
    for i in 0..<n {
        let first = Array(firstBinaryArr[i])
        let second = Array(secondBinaryArr[i])
        var result = ""
        
        for j in 0..<n {
            if first[j] == "1" || second[j] == "1" {
                result += "#"
            } else {
                result += " "
            }
        }
        
        answer.append(result)
    }
    
    return answer
}

solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
