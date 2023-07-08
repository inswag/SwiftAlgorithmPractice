//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return stride(from: 0, through: num_list.count-1, by: n).map {
        num_list[$0]
    }
}

solution([4,2,6,1,7,6], 2)
