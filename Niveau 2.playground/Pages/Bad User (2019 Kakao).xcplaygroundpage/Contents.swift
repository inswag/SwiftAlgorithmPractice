//: [Previous](@previous)

import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    
    // 1. 밴 유저의 아이디의 * 의 인덱스 위치를 알아보자. -> 아니야 막상 그 담은 위치를 사용할 방법이 없다.
    
    var idxArr: [[Int]] = []
    
    for i in 0..<banned_id.count {
        
        var idx: [Int] = []
        
        for (i, j) in banned_id[i].enumerated() {
//            print(i, j)
            
            if j == "*" {
                idx.append(i)
            }
        }
        
        idxArr.append(idx)
        
    }
    
    print("벤 유저의 아이디 * 위치 : ", idxArr)
    
    // 2. 글자 길이를 고려하여 * 인덱스 위치를 토대로 유저 아이디에 * 을 같은 위치에 넣어준다.
    
    let origin: [String] = user_id
    var modified: [String] = []
    
    var sameCountArr: [Int] = []
    
    var bannedId = banned_id
    
    for i in 0..<banned_id.count {
        
        // 그 전에 각 유저 아이디가 밴 아이디들 중에서 어떤 글자와 글자 길이가 같은지 확인해야 한다.
        
        for j in 0..<user_id.count {
            
            if banned_id[i].count == user_id[j].count {
                
                var temp = Array(user_id[j])            // f r o d o
                
                idxArr[i].forEach {
                    temp[$0] = "*"
                }
                
                modified.append(String(temp))
                
                print("\(i) : ", modified)
            }
            
        }
        
        var sameCount: Int = 0
        
        for str in modified {
            
            if banned_id[i] == str {
                sameCount += 1
                
            }
            
            
        }
        
        sameCountArr.append(sameCount)
        
        print("\(i) : ", sameCount)
        
        modified.removeAll()
    }

    
    
    return sameCountArr.reduce(1, *)
}

//solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"])
solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "*rodo", "******", "******"])
