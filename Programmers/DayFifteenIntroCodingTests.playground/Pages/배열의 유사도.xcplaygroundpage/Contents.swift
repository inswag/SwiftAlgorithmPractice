//: [Previous](@previous)

import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    return s1.filter { s2.firstIndex(of: $0) != nil }.count
}

/*
 Set 의 intersection 함수를 쓰면 더 간단했을 문제.
 Set 에 대한 관심을 늘리자!
 */

func solution2(_ s1:[String], _ s2:[String]) -> Int {
    return Set(s1).intersection(Set(s2)).count
}
