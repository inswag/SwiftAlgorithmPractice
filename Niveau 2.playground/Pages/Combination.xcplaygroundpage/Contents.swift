//: [Previous](@previous)

import Foundation

func combination2(_ n:Int, _ r:Int) -> Int {
    
    if (n == r || r == 0) {
        return 1
    } else {
        return combination2(n - 1, r - 1) + combination2(n - 1, r)
    }
    
}

combination2(5, 3)

func combination(_ arr: [Int], _ idx: Int, _ n: Int, _ r: Int, _ target: Int) {
    
    var array = arr
    
    if r == 0 {
        print(array, idx)
    } else if target == n {
        return
    } else {
        array[idx] = target
        combination(array, idx + 1, n, r-1, target + 1)
        combination(array, idx, n, r, target + 1)
    }
    
}

combination([5, 5, 5, 5, 5], 0, 5, 3, 0)
