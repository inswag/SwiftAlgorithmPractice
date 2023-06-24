//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ n:Int) -> Int {
    return num % n == 0 ? 1 : 0
}

/*
    num 을 n 으로 나눴을 떄 num 이 n 의 배수가 되려면 나눴을 때 나머지가 항상 0이어야 한다.
 */
