//: [Previous](@previous)

import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let boardMaxX = board.first! / 2
    let boardMaxY = board.last! / 2
    
    var userX: Int = 0
    var userY: Int = 0
    
    for key in keyinput {
        if abs(userX + mover(key).first!) <= boardMaxX {
            userX = userX + mover(key).first!
        }
        
        if abs(userY + mover(key).last!) <= boardMaxY {
            userY = userY + mover(key).last!
        }
        
    }
    
    return [userX, userY]
}

func mover(_ input: String) -> [Int] {
    switch input {
    case "up":
        return [0, 1]
    case "down":
        return [0, -1]
    case "left":
        return [-1, 0]
    case "right":
        return [1, 0]
    default:
        return [0, 0]
    }
}

solution(["down", "down", "down", "down", "down"]    , [7, 9]    )

/*
 다른 사람의 풀이
 - switch 문에 where 절을 사용해서 가져와봄
 */


func solution2(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var x = 0,
        y = 0

    keyinput.forEach {
        switch $0 {
        case "up" where y < ((board[1] - 1) / 2): y += 1
        case "down" where y > -((board[1] - 1) / 2): y -= 1
        case "right" where x < ((board[0] - 1) / 2): x += 1
        case "left" where x > -((board[0] - 1) / 2): x -= 1
        default: break
        }
    }

    return [x, y]
}
