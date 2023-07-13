//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> Int {
    return num_list.firstIndex(of: n) != nil ? 1 : 0
}
