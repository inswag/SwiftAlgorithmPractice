//: [Previous](@previous)

import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    let row = arr.count
    var column: Int = 0
    
    // 행과 열 개수 찾기
    arr.forEach {
        if $0.count > column {
            column = $0.count
        }
    }
    
    // 개수가 같은 경우
    if row == column {
        return arr
    }
    
    // 개수가 같지 않은 경우 행과 열의 차이 찾기
    let isRowBig: Bool = row - column >= 0 ? true : false
    let distance = row - column
    
    if isRowBig {
        var result: [[Int]] = Array
            .init(repeating: Array.init(repeating: 0, count: row), count: row)
        
        // 행이 크므로 열을 행에 맞게 추가
        for i in 0..<arr.count {
            for j in 0..<arr[i].count {
                result[i][j] = arr[i][j]
            }
        }
        
        return result
    } else {
        // 열이 크므로 행을 열 총 갯수까지 추가
        var result: [[Int]] = Array
            .init(repeating: Array.init(repeating: 0, count: column), count: column)
        
        // 행이 크므로 열을 행에 맞게 추가
        for i in 0..<arr.count {
            for j in 0..<arr[i].count {
                result[i][j] = arr[i][j]
            }
        }
        
        return result
    }
}

//solution([[572, 22, 37], [287, 726, 384], [85, 137, 292], [487, 13, 876]])
solution([[57, 192, 534, 2], [9, 345, 192, 999]])
