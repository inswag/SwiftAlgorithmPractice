//: [Previous](@previous)

import Foundation

func solution(_ common:[Int]) -> Int {
    let first = common[0]
    let second = common[1]
    let third = common[2]
    
    if second - first == third - second {
        // 등차수열
        return common.last! + (second - first)
    } else {
        // 등비수열
        return common.last! * (second / first)
    }
}

solution([1,2,3,4])
