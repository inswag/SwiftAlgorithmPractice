//: [Previous](@previous)

import Foundation

func solution(_ array:[Int]) -> [Int] {
    return [array.max()!,
            array.enumerated().map { if array.max() == $0.element {
                return $0.offset
            } else {
                return 0
            }}.max()!]
}

/*
 다른 사람의 풀이
 - 인덱스 찾을 때 firstIndex 쓰면 되는데 생 쇼를 했다
 */

func solution2(_ array: [Int]) -> [Int] {
    [array.max() ?? 0, array.firstIndex(of: array.max() ?? 0) ?? 0]
}

