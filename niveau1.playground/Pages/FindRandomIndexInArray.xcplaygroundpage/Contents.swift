//: [Previous](@previous)

import Foundation

// 나의 풀이
func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    
    var result: [Int] = []
    
    for i in 0..<commands.count {
        let arr = commands[i]
        
        let startIdx = arr[0] - 1
        let endIdx = arr[1] - 1
        let numberIdx = arr[2] - 1
        
        var sliceArr: [Int] = []
        
        for j in startIdx...endIdx {
            sliceArr.append(array[j])
        }
       
        sliceArr.sort(by: <)
        result.append(sliceArr[numberIdx])
    
    }
    
    return result
}

solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])

// Comment
// 고차 함수를 하고자 여러번 고민하였으나, 쉽지 않았다.

// 고차 함수를 활용한 모범 답안
func solution2(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    return commands.map {
        return array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1]
    }

}

solution2([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])

// Comment
// 아직 고차함수에 더 익숙해질 필요가 있다 이거 넘 좋자나..
