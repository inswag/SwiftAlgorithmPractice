//: [Previous](@previous)

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    // Yellow 배치 조합을 찾는다
    var yellowCases: [[Int]] = []
    
    if yellow == 1 {
        return [3, 3]
    }
    
    (1...yellow).forEach {
        if yellow % $0 == 0 {
            let first = $0
            let second = yellow / $0
            
            yellowCases.append([first, second])
        }
    }

    // 가능한 Yellow 배치 조합들 중 브라운의 갯수를 모두 찾는다
    for yellowCase in yellowCases {
        // 테두리 상하단
        let brownUpDown = (yellowCase.first!) * 2
        // 측면
        let brownSides = (yellowCase.last!) * 2
        // 양 모서리
        let corners = 4
        
        if brown == (brownUpDown + brownSides + corners) {
            return [yellowCase.first! + 2, yellowCase.last! + 2].sorted(by: >)
        }
    }
    
    return [0, 0]
}

solution(24, 24)


/*

 ***
 *#*
 *#*
 ***
 
 * * *
 * $ *
 * * *
 
 * * * *
 * $ $ *
 * * * *
 
  $ $ $
 
  2 * 12
  3 * 8
  4 * 6
  6 * 4
  8 * 3
  12 * 2
 
 * * * *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * $ $ *
 * * * *
 
 *****
 *$$$*
 *$$$*
 *$$$*
 *$$$*
 *$$$*
 *$$$*
 *$$$*
 *$$$*
 *****
 
**********
*$$$$$$$$*
*$$$$$$$$*
*$$$$$$$$*
**********
 
 */
