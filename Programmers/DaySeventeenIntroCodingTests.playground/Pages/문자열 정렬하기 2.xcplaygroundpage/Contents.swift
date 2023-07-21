//: [Previous](@previous)

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map { $0.lowercased() }.sorted().joined()
}
