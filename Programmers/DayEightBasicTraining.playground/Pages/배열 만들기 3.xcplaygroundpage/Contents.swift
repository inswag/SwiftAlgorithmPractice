//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for interval in intervals {
        result += arr[interval[0]...interval[1]]
    }
    
    return result
}

solution([1, 2, 3, 4, 5], [[1, 3], [0, 4]])

/*
 다른 사람의 풀이
 - flatMap을 사용해 풀이하고 싶었는데 아래처럼 하면 될 듯
 */

func solution2(_ arr: [Int], _ intervals: [[Int]]) -> [Int] {
    return intervals.flatMap { ints in Array(arr[ints[0]...ints[1]]) }
}
