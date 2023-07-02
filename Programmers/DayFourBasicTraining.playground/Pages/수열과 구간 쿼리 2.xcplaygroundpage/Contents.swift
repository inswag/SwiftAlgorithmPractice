//: [Previous](@previous)

import Foundation

/*
 나의 풀이
 */

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var resultArr: [Int] = []
    
    for querie in queries {
        let firstIdx = querie[0]
        let secIdx = querie[1]
        let comparingValue = querie[2]
        
        var resultValueArr: [Int] = []
        
        for i in firstIdx...secIdx {
            let comparedValue = arr[i]
            
            if comparingValue < comparedValue {
                resultValueArr.append(comparedValue)
            }
        }
        
        let sortedResult = resultValueArr.sorted()
        
        if sortedResult.count == 0 {
            resultArr.append(-1)
        } else {
            resultArr.append(sortedResult.first!)
        }
    }
    
    return resultArr
}

/*
 다른 사람의 풀이
 -> 고차함수 map을 사용해 이중 배열을 1차원 배열로 바꾸면서 arr 로부터 각 요소의 결과값을 가져오는 방식으로 구현
 -> map의 특성에 대해 다시 한번 학습하는 기회
 */

func solution2(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    return queries.map {
        let (s, e, k) = ($0[0], $0[1], $0[2])
        return Array(arr[s...e]).filter { $0 > k }.min() ?? -1
    }
}
