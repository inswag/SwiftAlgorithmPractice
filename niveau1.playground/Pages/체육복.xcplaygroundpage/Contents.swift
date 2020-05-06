//: [Previous](@previous)

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    guard n >= 2, n <= 30 else { return 0 }
    guard lost.count > 0, lost.count <= n else { return 0 }
    guard reserve.count > 0, reserve.count <= n else { return 0 }
    
    var total: Int = 0
    var lostArr: [Int] = lost
    var reserveArr: [Int] = reserve
    
    for i in reserve {
        
        for (n, m) in lost.enumerated() {
            print(n, m)
            if i+1 == m || i-1 == m {
                lostArr.remove(at: n)
//                break
            } else if i == m {
                lostArr.remove(at: n)
//                break
            }
            
        }
        print(i)
        break
    }
    
    
    return 0
}

solution(5, [2,4], [1, 3, 5])

//
