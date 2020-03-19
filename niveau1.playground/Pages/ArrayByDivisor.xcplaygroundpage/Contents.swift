//: [Previous](@previous)

import Foundation

// 첫 번째 풀이
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    let tempArr = arr.filter { $0 % divisor == 0 }
    
    if tempArr.isEmpty {
        return [-1]
    } else {
        return tempArr.sorted(by: < )
    }

}

solution([5, 9, 7, 10], 5)


// 두 번쨰 풀이
func solution2(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter { $0 % divisor == 0 }
    return result.isEmpty ? [-1] : result.sorted(by: < )
}

solution2([5, 9, 7, 10], 5)


// 모범 답안
func solution3(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 }
    return  array == [] ? [-1] : array
}

// Comments
// 먼저 배열을 정렬하고 filter 를 적용하였다.
// 필터를 먼저 적용하고 정렬을 해야 한다고 생각했는데,
// 생각의 전황에 대해서 깊게 생각해볼 수 있는 답안이었다.
