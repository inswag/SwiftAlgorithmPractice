//: [Previous](@previous)

import Foundation

// Try 1 :

// 실패율 : 스테이지에 도달했으나 아직 클리어하지 못한 플레이어 수 / 스테이지에 도달한 플레이어의 수
// Parameters...
// N : 전체 스테이지의 개수
// stages : 게임을 이용하는 사용자가 현재 멈춰있는 스테이지의 번호
// 실패율이 높은 스테이지부터 내림차순으로 스테이지의 번호가 담겨있는 배열을 return 하도록 만들기.


func solution2(_ N:Int, _ stages:[Int]) -> [Int] {
    
    let finalStage: Int = N           // 마지막 스테이지
    var totalUser: Int = stages.count // 총 도전 유저 카운트
    
    
    if finalStage < 1 { return [0] }
    
    for i in 0...finalStage {
        

    }
    
    for i in 0..<stages.count {
        
        if (finalStage + 1) < stages[i] { return [0] }   // 유저가 마지막 스테이지보다 더 뒤에 있지 않도록 처리
        
        let user = stages[i]
        
        
        
    }
    
    
    
    return []
}


func solution3(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var failRateArr: [Double] = []
    var resultArr: [Int] = []
    var totalStage = stages.count
    
    for j in 1...N {
        
        var count = 0
        
        for i in 0..<stages.count {
            if j == stages[i] {
                count += 1
            }
        }
        
        print("count : ", count)
        print("totalStage", totalStage)
        
        failRateArr.append(Double(count)/Double(totalStage))
        totalStage -= count
    
        print(failRateArr)
        print(totalStage)
        
        
    }
    
    for i in 0..<failRateArr.count {
        
    }
    
    
    return []
}


func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var failRateArr: [Double] = []
    
    return []
}

solution(5, [2, 1, 2, 6, 2, 4, 3, 3])

// 정답
func solution4(_ n: Int, _ stages: [Int]) -> [Int] {
    
    var rates = Array(repeating: 0, count: n + 1)
    
    for stage in stages {       // 2
        for i in 0..<stage {
            rates[i] += 1
//            print(rates)
        }
    }
    
    print(rates)
    
    var r = [Double]()
    
    for i in 0..<n {
        let offset = i + 1
        r.append(Double(rates[i] - rates[offset]) / Double(rates[i]))
    }
    return r.enumerated()
        .sorted(by: { $0.element > $1.element })
        .map({ $0.offset + 1 })
}



//solution(4, [4,4,4,4,4])
