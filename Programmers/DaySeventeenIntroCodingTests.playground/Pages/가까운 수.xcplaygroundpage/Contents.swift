//: [Previous](@previous)

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    let sortedArr = array.sorted { abs($0 - n) < abs($1 - n) }
    let sameDistanceCheckArr = sortedArr.filter { abs(sortedArr.first! - n) == abs($0 - n) }
    return sameDistanceCheckArr.sorted().first!
}

solution([1,4,2,1], 3)

/*
 다른 사람의 풀이
 - 요런 방법도 있네..
 */

func solution2(_ array:[Int], _ n:Int) -> Int {
    return array.min(by: { (abs($0 - n), $0) < (abs($1 - n), $1) })!
}
