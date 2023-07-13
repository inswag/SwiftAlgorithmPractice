//: [Previous](@previous)

import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    return str_list.filter {
        $0.range(of: ex) == nil
    }.joined()
}
