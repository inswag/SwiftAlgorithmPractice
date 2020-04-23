//: [Previous](@previous)
import Foundation

func solution(_ n:Int64) -> Int64 {
    
    for i in 1...n {                    // 1
        
        if (i * i) > n {                // 2
            break
        }
        
        if (i * i) == n {               // 3
            return (i + 1) * (i + 1)
        }
        
    }
    
    return -1                           // 4
}

solution(1)

func solution2(_ n:Int64) -> Int64 {
    
    let check = Int64(sqrt(Double(n)))
    return check * check == n ? (check + 1) * (check + 1) : -1
    
}

solution2(3) // 1 ~ 3 까지 1
solution2(6) // 4 ~ 8 까지 2
solution2(10) // 9 ~ 15 까지 3
solution2(18) // 16 ~ 24 까지 4

solution2(4)    // 4는 2의 제곱
solution2(9)    // 9는 3의 제곱
solution2(16)   // 16은 4의 제곱

// 이를 통한 추론... 제곱한 수가 나오기 전까지 같은 숫자가 나온다.



