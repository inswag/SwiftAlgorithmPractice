//: [Previous](@previous)

import Foundation

/*
 TIP
 - 기약분수란 분모와 분자의 공약수가 1뿐인 분수 입니다.
   따라서, 분모와 분자를 그들의 최대공약수로 나누면 기약분수가 됩니다.
 */

func solution(_ a:Int, _ b:Int) -> Int {
    // a와 b의 모든 약수 찾기
    let aArr = Array(1...a).filter { a % $0 == 0 }
    let bArr = Array(1...b).filter { b % $0 == 0 }
    
    // 분모와 분자를 그들의 최대공약수로 나누면 기약분수이므로 공약수 중 최대공약수 찾기
    let max = Set(aArr).intersection(Set(bArr)).max() ?? 0
    
    // 문제의 힌트 '기약분수로 나타내었을 때, 분모의 소인수가 2와 5만 존재해야 합니다.'
    var down = (b / max)
    var resultArr: [Int] = []
    
    // 분모를 소인수분해 해보기
    while down != 1 {
        for i in 2...b {
            if down % i == 0 {
                resultArr.append(i)
                down = down / i
                break
            }
        }
    }
    
    // 분모의 소인수 중 2와 5를 제외한 요소가 있다면 무한소수 아니면 유한소수
    var isFinite: Bool = false
    isFinite = resultArr.filter { !($0 == 2 || $0 == 5) }.count > 0 ? false : true
    return isFinite ? 1 : 2
}

solution(1, 16)
