//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    return String(my_string.suffix(is_suffix.count)) == is_suffix ? 1 : 0
}
