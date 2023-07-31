//: [Previous](@previous)

import Foundation

//func solution(_ s:String) -> Bool {
//    var checker: String = ""
//
//    for c in s {
//        checker += String(c)
//        checker = checker.replacingOccurrences(of: "()", with: "")
//    }
//
//    return checker == "" ? true : false
//}

//func solution(_ s:String) -> Bool {
//    var ans:Bool = false
//    var string: String = s
//
//    while !ans {
//        string = string.replacingOccurrences(of: "()", with: "")
//
//        if string == "" {
//            return true
//        } else {
//            if string.count == 1 {
//                return false
//            } else if string.count == 2 {
//                switch string {
//                case ")(", "))", "((":
//                    return false
//                default:
//                    return true
//                }
//            } else {
//                continue
//            }
//        }
//    }
//}

//func solution(_ s:String) -> Bool {
//    var result: String = ""
//
//    for c in s {
//        result += String(c)
//
//        if result.contains("()") {
//            result.removeLast()
//            result.removeLast()
//        }
//    }

//    return result == "" ? true : false
//}

//func solution(_ s:String) -> Bool {
//    return s.first! == "(" && s.last! == ")" ? true : false
//}

func solution(_ s:String) -> Bool {
    let zeroCon = s.first! == ")" || s.last! == "("

    if zeroCon {
        return false
    }

    var count: Int = 0

    for c in s {
        if c == "(" {
            count += 1
        } else {
            if count == 0 {
                return false
            }

            count -= 1
        }
    }

    return count == 0 ? true : false
}

solution("()()")
solution(")()(")
