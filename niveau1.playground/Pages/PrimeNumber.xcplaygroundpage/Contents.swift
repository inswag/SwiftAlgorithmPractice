//: [Previous](@previous)

import Foundation

// 첫 번째 풀이
func solution(_ n:Int) -> Int {
    if n < 2 { return n }
    return (2...n).filter { n / $0 == 1 }.count
}

// Comment
// 생각 자체를 잘못함

// 두 번째 풀이
// 1부터 n까지 나누는 과정에서 나머지가 2는 소수 3은 1로 나눴을때 ㅇㅋ 2로 안나눠지고(나머지) 3으로 나누니 ㅇㅋ
// 1은 어느 숫자나 나누어지니 2부터 n-1 까지 나누어지지 않으면서 그 몫이 1이 되어야함. 6의 경우 1,2(몫 3), 3(몫 2), 4(몫 1이나 나머지 2), 5(몫 1이나 나머지 1), 6(몫 1, 나머지 0)

func solution2(_ n:Int) -> Int {
    
    var result: [Int] = []
    var primeNumberCount: Int = 0
    
    if n < 2 { return n }
    
    for i in 2...n { // n이 10 이면, 1~10 사이를 확인
    
        // 4
        for m in 2...i {
            
            if i % m == 0 && i / m > 1 {
                break
            }
//
//            if i % m != 0 && i / m > 1 {
//                break
//            }
            
            if i / m == 1 && i % m == 0 {
                print("Success i: \(i), m: \(m)")
                primeNumberCount += 1
            }
            
            
        }
        
        print("Count of \(i) : ", primeNumberCount)
        
        
        if primeNumberCount == 1 {
            result.append(i)
            primeNumberCount = 0
        }
        
        
    }
    
    print(result)
    
    return result.count
    
    
    
    
//    return (2...n).filter { n / $0 == 1 && n % $0 == 0 }.count
}

solution2(5)
// 아냐 뭔가 잘못풀었어..

// Comment
//


// Comment
//

}
