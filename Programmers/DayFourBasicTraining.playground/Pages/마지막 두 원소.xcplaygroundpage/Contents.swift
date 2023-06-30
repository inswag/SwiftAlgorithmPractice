//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var newNumList = num_list
    
    let firstnum = num_list[num_list.count - 1]
    let secNum = num_list[num_list.count - 2]
    
    if firstnum > secNum {
        newNumList.append(firstnum - secNum)
    } else {
        newNumList.append(firstnum * 2)
    }
    
    return newNumList
}

solution([2,1,6])

/*
 다른 사람의 풀이에서 배운 것
 - 배열 + 배열의 연산이 가능하다
*/
