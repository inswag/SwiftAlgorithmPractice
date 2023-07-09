//: [Previous](@previous)

import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.enumerated().map {
        if $0.offset % 2 == 0 {
            return $0.element.uppercased()
        } else {
            return $0.element.lowercased()
        }
    }.map {
        $0
    }
}
