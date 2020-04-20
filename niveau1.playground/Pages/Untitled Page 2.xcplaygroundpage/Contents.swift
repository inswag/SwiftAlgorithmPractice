//: [Previous](@previous)

import Foundation

func solution(_ s: String) -> Bool {
    
    Array(s).forEach {
        if !$0.isLetter {
            if Array(s).count == 4, Array(s).count == 6 {
                return true
            }
            return false
        } else {
            return false
        }
    }
   
    
    
}
