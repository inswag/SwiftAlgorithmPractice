//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> [[Int]] {
    enum Direction {
        case right
        case down
        case left
        case up
    }
    
    var fullArr: [[Int]] = Array.init(repeating: Array.init(repeating: 0, count: n), count: n)
    print(fullArr)
    
    var x: Int = 0
    var y: Int = 0
    
    // ➡️⬇️⬅️⬆️ 의 반복
    var direction: Direction = .right
    var circleCount: Int = 0
    
    for i in 1...(n * n) {
        // 숫자 세팅
        fullArr[x][y] = i
        print("x : \(x), y : \(y), number : \(i)")
//        print(i)
        
        if direction == .right {
            if y == (n - 1) {
                print("right call, next go to down")
                x += 1
                direction = .down
                continue
            } else {
                print("right call")
                y += 1
                
                if fullArr[x][y] != 0 {
                    y -= 1
                    x += 1
                    direction = .down
                    continue
                }
                
                continue
            }
        }
        
        if direction == .down {
            if x == (n - 1) {
                print("down call, next go to left")
                y -= 1
                direction = .left
                continue
            } else {
                print("down call")
                x += 1
                
                if fullArr[x][y] != 0 {
                    print("go to left")
                    x -= 1
                    y -= 1
                    direction = .left
                    continue
                }
                
                continue
            }
        }
        
        if direction == .left {
            if y == 0 {
                print("left call, next go to up")
                x -= 1
                direction = .up
                continue
            } else {
                print("left call")
                y -= 1
                
                if fullArr[x][y] != 0 {
                    print("go to up")
                    y += 1
                    x -= 1
                    direction = .up
                    continue
                }
                
                continue
            }
        }

        if direction == .up {
            if x == 0 {
                if fullArr[x][y] != 0 {
                    print("go to right")
                    x += 1
                    direction = .right
                    continue
                } else {

                }
            } else {
                print("up call")
                x -= 1
                
                if fullArr[x][y] != 0 {
                    print("go to right")
                    x += 1
                    y += 1
                    direction = .right
                    continue
                } else {
                    
                }
                continue
            }
        }
    }
    
    return fullArr
}

solution(5)
