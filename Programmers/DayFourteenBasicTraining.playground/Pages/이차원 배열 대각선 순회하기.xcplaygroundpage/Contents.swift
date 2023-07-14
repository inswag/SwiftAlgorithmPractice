//: [Previous](@previous)

import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    var sum: Int = 0
    
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if i + j <= k {
                sum += board[i][j]
            }
        }
    }
    
    return sum
}

solution([[0, 1, 2],[1, 2, 3],[2, 3, 4],[3, 4, 5]]    , 2)

/*
 더 좋은 방법 찾기
 - if 문을 쓰는 대신 for 문에서 where 문을 함께 사용하여 깔끔하게 조건문을 달 수 있었다.
 */

func solution2(_ board:[[Int]], _ k:Int) -> Int {
    var ans = 0
    for i in 0..<board.count {
        for j in 0..<board[0].count where i + j <= k {
            ans += board[i][j]
        }
    }
    return ans
}

