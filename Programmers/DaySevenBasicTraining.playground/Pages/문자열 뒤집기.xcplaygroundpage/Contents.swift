//: [Previous](@previous)

import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var my = Array(my_string)
    my.replaceSubrange(s...e, with: my[s...e].reversed())
    return String(my)
}

solution("Progra21Sremm3", 6, 12)
