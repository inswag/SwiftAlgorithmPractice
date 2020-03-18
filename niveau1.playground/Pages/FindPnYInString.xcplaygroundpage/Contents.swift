
//: [Previous](@previous)

import Foundation

// 문자열에서 p 와 y 의 개수 비교
// 나의 풀이

func solution(_ s:String) -> Bool {
    
    var ans: Bool = false
    
    var p = Array(s).filter { $0 == "p" || $0 == "P" }
    
    var y = Array(s).filter { $0 == "y" || $0 == "Y" }
    
    print("\(p)")
    
    if s.count > 50 {
        return false
    }
    
    if p.isEmpty && y.isEmpty {
        return true
    }
    
    if p.count == y.count {
        return true
    }
    
    return ans
}

// 모범 답안
func solution2(_ s:String) -> Bool {
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}

// 정리
// 모범 답안에서 모르는거 하나도 없었는데 저렇게 못한 것을 반성하자...
// 지금 고차함수 공부중인데 그래도 필터를 사용해봤음!!  
