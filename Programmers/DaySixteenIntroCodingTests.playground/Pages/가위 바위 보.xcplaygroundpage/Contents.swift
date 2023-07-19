//: [Previous](@previous)

import Foundation

func solution(_ rsp:String) -> String {
    return rsp.map {
        if $0 == "2" {
            return "0"
        } else if $0 == "0" {
            return "5"
        } else {
            return "2"
        }
    }.joined()
}

solution("2")
