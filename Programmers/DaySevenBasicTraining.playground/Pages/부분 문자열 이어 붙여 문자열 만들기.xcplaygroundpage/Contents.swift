import UIKit

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    // my_strings 와 parts 의 길이는 같다.
    // parts 의 요소는 [s, e] 형태, my_string[i] 의 인덱스 s ~ e 까지의 부분 문자열을 의미
    
    var result: String = ""
    
    for (idx, item) in my_strings.enumerated() {
        let mySIdx = item.index(item.startIndex, offsetBy: parts[idx][0])
        let myEIdx = item.index(item.startIndex, offsetBy: parts[idx][1])
        
        result += item[mySIdx...myEIdx]
    }
    
    return result
}

solution(["progressive", "hamburger", "hammer", "ahocorasick"], [[0, 4], [1, 2], [3, 5], [7, 7]])
