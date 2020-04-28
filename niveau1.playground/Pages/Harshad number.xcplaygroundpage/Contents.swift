//: [Previous](@previous)

import Foundation

func solution(_ x:Int) -> Bool {
    var intArr: [Int] = []
    
    Array(String(x)).forEach {
        if let intValue = $0.wholeNumberValue { intArr.append(intValue) }
    }
    
    return x % intArr.reduce(0, +) == 0
}

solution(10)
solution(12)
solution(11)
solution(13)

// Comment
// String.Element 의 값을 Int 로 변환할때 Swift 5 부터는 wholeNumberValue 를 사용할 수 있다.

// 깔끔한 풀이
func solution2(_ x:Int) -> Bool {
    return x % String(x).reduce(0, {$0+Int(String($1))!}) == 0
}


// Comment
// String() 을 알았다면 좋았을텐데,
// Reduce 를 저렇게 사용할 수도 있구나. 리듀스를 좀 더 공부해야겠다.
