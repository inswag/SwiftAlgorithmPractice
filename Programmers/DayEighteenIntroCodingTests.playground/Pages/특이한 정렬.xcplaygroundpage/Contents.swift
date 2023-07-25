//: [Previous](@previous)

import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    let result = numlist.sorted().sorted {
        let first = abs(n - $0)
        let second = abs(n - $1)
        
        if first == second {
            return $1 > $0
        } else {
            if first < second {
                return $0 < $1
            } else {
                return $0 > $1
            }
        }
    }

    return result.reversed()
}

solution([10000,20,36,47,40,6,10,7000]    , 30)
