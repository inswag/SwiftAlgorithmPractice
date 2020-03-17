
import Foundation

//: [Previous](@previous)

func solution(_ s:String) -> String {

    if s.count < 1 || s.count > 100 {
        return "ERROR"
    }

    if s.count == 2 {
        return String(s[s.startIndex])
    }

    if s.count % 2 == 0 {
        let first: Int = (s.count / 2) - 1
        let second: Int = (s.count / 2)
        let strFirst = s.index(s.startIndex, offsetBy: first)
        let strSecond = s.index(s.startIndex, offsetBy: second)
        return String(s[strFirst]) + String(s[strSecond])
    } else {
        let first: Int = s.count / 2
        let strFirst = s.index(s.startIndex, offsetBy: first)
        return String(s[strFirst])
    }
    
}

solution("Error")


let str = "Error"

let index = str.index(str.startIndex, offsetBy: 2)

print(str[index])

// String 을 Array 로 묶으면 되는구나... 이걸 알았더라면 시쉽게 했지
// 모범 Answer

func solution2(_ s:String) -> String {
    if Array(s).count % 2 == 0 {
        return String(Array(s)[(s.count/2)-1...(s.count/2)])
    }else{
        return String(Array(s)[s.count/2])
    }
}

solution2("OK")
