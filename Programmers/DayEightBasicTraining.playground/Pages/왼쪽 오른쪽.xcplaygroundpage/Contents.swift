//: [Previous](@previous)

import Foundation

func solution(_ str_list:[String]) -> [String] {
    let lIdx = str_list.firstIndex(of: "l")
    let rIdx = str_list.firstIndex(of: "r")
    
    if lIdx == nil && rIdx == nil {
        return []
    }
    
    if lIdx != nil, rIdx == nil {
        return str_list.count == 1 ? [] : Array(str_list[0..<lIdx!])
    }
    
    if lIdx == nil && rIdx != nil {
        return str_list.count == 1 ? [] : Array(str_list[(rIdx!+1)...])
    }
    
    if let l = lIdx, let r = rIdx {
        return l < r ? Array(str_list[0..<l]) : Array(str_list[(r+1)...])
    }
    
    return []
}

solution(["u","u","l","r"])
