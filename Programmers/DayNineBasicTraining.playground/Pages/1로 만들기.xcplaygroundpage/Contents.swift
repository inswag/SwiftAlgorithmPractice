//: [Previous](@previous)

import Foundation

func solution(_ num_list:[Int]) -> Int {
    var result: Int = 0
    
    for i in 0..<num_list.count {
        var num = num_list[i]
        
        while num != 1 {
            if num % 2 == 0 {
                num = num / 2
            } else {
                num = (num - 1) / 2
            }
            
            result += 1
        }
    }
    
    return result
}

/*
다른 사람의 풀이
 - 재귀함수를 이용하고 싶었는데 어떻게 짜야 할 지 잘 판단이 안됐음.
 - 아래 처럼 하면 좋을 듯
 */

func solution2(_ num_list:[Int]) -> Int {
    func dfs(_ num: Int, _ count: Int) -> Int {
        if num == 1 { return count }
        return dfs(num / 2, count + 1)
    }
    return num_list.reduce(0) { $0 + dfs($1, 0) }
}
