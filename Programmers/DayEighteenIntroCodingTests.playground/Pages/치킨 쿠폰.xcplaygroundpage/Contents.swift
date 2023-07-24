//: [Previous](@previous)

import Foundation

func solution(_ chicken:Int) -> Int {
    var serviceChicken: Int = 0
    
    var remainCoupon: Int = 0
    
    for _ in 1...chicken {
        remainCoupon += 1
        
        if remainCoupon == 10 {
            serviceChicken += 1
            remainCoupon = 1
        }
    }
    
    return serviceChicken
}

solution(1081)

/*
 다른 사람의 풀이
 - 조금 더 정리된 풀이
 */

func solution2(_ chicken:Int) -> Int {
    var chicken = chicken
    var service = 0
    var coupon = 0

    while chicken != 0 {
        coupon += chicken
        service += coupon / 10
        chicken = coupon / 10
        coupon %= 10
    }

    return service
}
