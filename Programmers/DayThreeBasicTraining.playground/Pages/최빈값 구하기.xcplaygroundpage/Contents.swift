//: [Previous](@previous)

import Foundation

func solution(_ array:[Int]) -> Int {
    var dic: [Int: [Int]] = [:]
    
    for num in array {
        if dic[num] != nil {
            dic[num]?.append(num)
        } else {
            dic[num] = [num]
        }
    }
    
    // most frequent value count
    var mfvc: Int = 0
    // most frequent value
    var mfv: Int = 0
    // check same mfvc exist
    var isDuplicated: Bool = false
    
    for d in dic {
        if d.value.count > mfvc {
            isDuplicated = false
            mfvc = d.value.count
            mfv = d.key
        } else if d.value.count == mfvc {
            isDuplicated = true
        }
    }

    return isDuplicated ? -1 : mfv
}

/*
 다른 사람의 풀이
 - 딕셔너리로 접근하는 것은 동일했으나 value.count 를 활용해 sorted 를 사용하여 정렬하는 것을 성공적으로 해내지 못해 나의 코드가 길어짐.
 - 정렬 후 딕셔너리의 요소가 하나인 경우를 제외하고는 첫 값과 두 번째 값을 비교해서 리턴하면 쉽게 끝나는 문제였음
 */

//func solution(_ array: [Int]) -> Int {
//    let sorted = Dictionary(grouping: array) { $0 }.sorted { $0.value.count > $1.value.count }
//    return sorted.count > 1 && sorted[0].value.count == sorted[1].value.count ? -1 : sorted[0].key
//}
