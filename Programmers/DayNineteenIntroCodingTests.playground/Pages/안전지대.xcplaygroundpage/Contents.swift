//: [Previous](@previous)

import Foundation

func solution(_ board:[[Int]]) -> Int {
    return converter(board).flatMap { $0 }.filter { $0 != 1 }.count
}

func converter(_ positionArr: [[Int]]) -> [[Int]] {
    var convertingArr = positionArr
    
    for i in 0..<positionArr.count {
        for j in 0..<positionArr.count {
            if positionArr[i][j] == 1 {
                // Left
                if j - 1 >= 0 {
                    convertingArr[i][j - 1] = 1
                }
                
                // Left Up
                if i - 1 >= 0 && j - 1 >= 0 {
                    convertingArr[i - 1][j - 1] =  1
                }
                
                // Left Down
                if i + 1 <= positionArr.count - 1 && j - 1 >= 0 {
                    convertingArr[i + 1][j - 1] = 1
                }

                // Up
                if i - 1 >= 0 {
                    convertingArr[i - 1][j] =  1
                }
                                    
                // Down
                if i + 1 <= positionArr.count - 1 {
                    convertingArr[i + 1][j] =  1
                }
                
                // Right
                if j + 1 <= positionArr.count - 1 {
                    convertingArr[i][j + 1] =  1
                }
                
                // Right Up
                if i - 1 >= 0 && j + 1 <= positionArr.count - 1 {
                    convertingArr[i - 1][j + 1] =  1
                }

                // Right Down
                if i + 1 <= positionArr.count - 1 && j + 1 <= positionArr.count - 1 {
                    convertingArr[i + 1][j + 1] =  1
                }
            } else {
                continue
            }
        }
    }

    return convertingArr
}

solution([[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 0]])
solution([[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 1, 0], [0, 0, 0, 0, 0]])
solution([[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]])
