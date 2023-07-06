import UIKit

func solution(_ n:Int, _ k:Int) -> [Int] {
    return Array(1...n).filter { $0 % k == 0 }
}

// 시간 초과 발생

func solution2(_ n:Int, _ k:Int) -> [Int] {
    var result: [Int] = []
    
    for i in 1...n {
        if i % k == 0 {
            result.append(i)
        }
    }
    
    return result
}

// OK

/*
    다른 사람의 풀이
    - stride 함수를 사용하면 쉽게 풀 수 있었음
 */

func solution3(_ n:Int, _ k:Int) -> [Int] {
    return stride(from: k, through: n, by: k).map { $0 }
}
