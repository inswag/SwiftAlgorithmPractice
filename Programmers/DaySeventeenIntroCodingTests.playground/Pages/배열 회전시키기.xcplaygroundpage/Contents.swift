//: [Previous](@previous)

import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    let firstNum = numbers.first!
    let lastNum = numbers.last!
    
    var result: [Int] = numbers
    
    if direction == "right" {
        result.removeLast()
        return [lastNum] + result
    } else {
        result.removeFirst()
        return result + [firstNum]
    }
}


/*
다른 사람의 풀이
 - 배열의 insert 와 append 를 잘 이용하면 더 짧게 풀 수 있음
 */

func solution2(_ numbers:[Int], _ direction:String) -> [Int] {
    var nums = numbers
    direction == "right" ? nums.insert(nums.removeLast(), at: 0) : nums.append(nums.removeFirst())
    return nums
}
