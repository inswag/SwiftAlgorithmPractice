//: [Previous](@previous)

import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    let garo = box[0] / n
    let sero = box[1] / n
    let height = box[2] / n
    
    return garo * sero * height
}
