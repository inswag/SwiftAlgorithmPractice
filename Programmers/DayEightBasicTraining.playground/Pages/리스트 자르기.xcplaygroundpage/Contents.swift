//: [Previous](@previous)

import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    let a = slicer[0]
    let b = slicer[1]
    let c = slicer[2]
    
    var result: [Int] = []
    
    if n == 1 {
        for i in 0...b {
            result.append(num_list[i])
        }
    } else if n == 2 {
        for i in a...(num_list.count - 1) {
            result.append(num_list[i])
        }
    } else if n == 3 {
        for i in a...b {
            result.append(num_list[i])
        }
    } else {
        var interval: Int = 1
        
        for i in a...b {
            if interval == c {
                result.append(num_list[i])
                interval = 1
            } else {
                if result.count == 0 {
                    result.append(num_list[i])
                } else {
                    interval += 1
                }
            }
        }
    }
    
    return result
}

/*
 다른 사람의 풀이
 - interval 을 구할 때 방법이 떠오르지 않았음.
 - stride 함수를 이용하면 좀더 쉽게 풀 수 있었다.
 */

func solution2(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    if n == 1 { return Array(num_list[...slicer[1]]) }
    if n == 2 { return Array(num_list[slicer[0]...]) }
    if n == 3 { return Array(num_list[slicer[0]...slicer[1]]) }
    return stride(from: slicer[0], through: slicer[1], by: slicer[2]).map { num_list[$0] }
}
