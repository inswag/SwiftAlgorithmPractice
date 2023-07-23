//: [Previous](@previous)

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var newArr: [Int] = []
    
    while newArr.count < 2 * k {
        newArr += numbers
    }
    
    return k == 1 ? newArr.first! : newArr[((2 * k) - 1) - 1]
}

solution([1,2,3], 3)

// 1 2 3 4 5 6 1 2 3 4 5 6
// 0 1 2 3 4 5 6 7 8 9 10

/*
 다른 사람의 풀이
 - 좋은 방법
 */

func solution2(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[((k-1)*2) % numbers.count]
}
