//: [Previous](@previous)

import Foundation

func solution(_ code:String) -> String {
    var mode: Bool = false // 0 or 1
    var ret: String = ""
    
    for (idx, item) in code.enumerated() {
        if item == "1" {
            mode.toggle()
            continue
        }
        
        if mode {
            if idx % 2 == 1 {
                ret += String(item)
            }
        } else {
            if idx % 2 == 0 {
                ret += String(item)
            }
        }
    }
    
    return ret != "" ? ret : "EMPTY"
}
