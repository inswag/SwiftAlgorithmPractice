//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    for i in -49...333 {
        var sumArr: [Int] = []
        
        for j in 1...num {
            sumArr.append(i + j)
        }
        
        if sumArr.reduce(0, +) == total {
            return sumArr
        }
    }
    
    return []
}

solution(5, 5)

/*
 다른 사람의 풀이
 - 나는 완전탐색으로 풀어야 한다고 생각했는데, 합을 구하는 공식을 역으로 이용하는 것도 가능했구나
 - 완전탐색은 사실 여기서는 훌륭한 방법은 아닌듯.
 */

func solution2(_ num:Int, _ total:Int) -> [Int] {
    let base = (total - (num * (num + 1) / 2)) / num + 1
    return (0..<num).map { $0 + base }
}
