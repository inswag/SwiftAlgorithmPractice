//: [Previous](@previous)

import Foundation

// 나의 풀이
func solution(_ s:String) -> String {
    let lowerResult = s.filter { $0.isLowercase }.sorted(by: >).reduce("") { "\($0)" + "\($1)" }
    let upperResult = s.filter { $0.isUppercase }.sorted(by: >).reduce("") { "\($0)" + "\($1)" }
    return lowerResult + upperResult
}

solution("Zbcdefg")

// Comment
// 대문자와 소문자가 섞여 있어 일단 이를 분리시키는 것을 가장 먼저 생각하였고,
// 그 다음 각 문자를 String.Element 단위로 배열에 담아 내림차순 정렬한 후 다시 합쳐주었다.
// 마지막으로 둘을 더해주면 끝


// 모범답안
func solution2(_ s:String) -> String {
    return String(s.sorted { $0 > $1 })
}

// Comment
// 헐.. Swift 의 sorted(by: ) 함수는 알아서 '대소문자'도 비교해주는구나.
// 아무튼 이 사실을 잘 알고 있도록 하자.
