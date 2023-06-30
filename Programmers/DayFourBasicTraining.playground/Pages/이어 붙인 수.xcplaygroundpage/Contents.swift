//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int]) -> Int {
    var oddSum: String = ""
    var evenSum: String = ""
    
    num_list.forEach {
        if $0 % 2 == 0 {
            evenSum += String($0)
        } else {
            oddSum += String($0)
        }
    }
    
    return Int(oddSum)! + Int(evenSum)!
}

/*
 다른 사람의 풀이
 애초에 num_list 를 필터링 해서 홀수와 짝수만을 남긴 후 String 으로 변환해서 붙여버리면 어렵지 않은 일이었음...
 조금만 천천히 풀기. 다 아는 내용인데 너무 서두름
 */


func solution2(_ num_list:[Int]) -> Int {
    let even = Int(num_list.filter { $0 % 2 == 0 }.map { String($0) }.joined())!
    let odd = Int(num_list.filter { $0 % 2 != 0 }.map { String($0) }.joined())!
    return even + odd
}

