//: [Previous](@previous)

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    let finalStage: Int = N           // 마지막 스테이지
    var totalUser: Int = stages.count // 총 도전 유저 카운트
    
    
    if finalStage < 1 { return [0] }
    
    for i in 0...finalStage {
        
        
        
        
//        for n in
        
    }
    
    for i in 0..<stages.count {
        
        if (finalStage + 1) < stages[i] { return [0] }   // 유저가 마지막 스테이지보다 더 뒤에 있지 않도록 처리
        
        let user = stages[i]
        
        
        
    }
    
    
    
    return []
}
