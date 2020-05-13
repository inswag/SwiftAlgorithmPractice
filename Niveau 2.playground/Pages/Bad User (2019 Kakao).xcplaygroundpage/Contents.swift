//: [Previous](@previous)

import Foundation

// 첫번째 풀이

func findIdx(_ banned_id:[String]) -> [[Int]] {
    var idxArr: [[Int]] = []
    
    for i in 0..<banned_id.count {
        var idx: [Int] = []
        for (i, j) in banned_id[i].enumerated() {
            if j == "*" {
                idx.append(i)
            }
        }
        idxArr.append(idx)
    }
    
    return idxArr
}

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    
    // 1. 밴 유저의 아이디의 * 의 인덱스 위치를 알아보자. -> 아니야 막상 그 담은 위치를 사용할 방법이 없다.
    // 밴 유저 : ["fr*d*", "*rodo", "******", "******"]
    let idxArr = findIdx(banned_id)

    print("벤 유저의 아이디 * 위치 : ", idxArr)

    // 2. 글자 길이를 고려하여 * 인덱스 위치를 토대로 유저 아이디에 * 을 같은 위치에 넣어준다.

    let originUser: [String] = user_id
    let originBanUser: [String] = banned_id

    var transformedOriginUser: [String] = []
//    var sameCountArr: [Int] = []
//
//    var bannedId = banned_id
//
    for i in 0..<originBanUser.count {
//
//        // 그 전에 각 유저 아이디가 밴 아이디들 중에서 어떤 글자와 글자 길이가 같은지 확인해야 한다.
//        // ["fr*d*", "*rodo", "******", "******"]
//        for j in 0..<user_id.count {
//
//            print("\(i + 1)번째 banned ID : ", banned_id[i])
//            print("\(j + 1)번째 검사할 user ID : ", user_id[j])
//
//            if banned_id[i].count == user_id[j].count { //
//
//                var temp = Array(user_id[j])            // f r o d o
//
//                idxArr[i].forEach {
//                    temp[$0] = "*"
//                }
//
//
//                modified.append(String(temp))
//
//
//
//
////                print("일치하여 \(i + 1) 번째 벤 id : ", modified)
//            } else {
////                print("일치하지 않아 \(i + 1) 번째 통과 id : ", modified)
//
//            }
//
//            if
//
//
//        }
//
//        print("유저 아이디 : ", user_id)
//        print("필터링 걸린 아이디 : ", modified)
//
//        var sameCount: Int = 0
//
//        for str in modified {
//
//            if banned_id[i] == str {
//                sameCount += 1
//
//            }
//
//
//        }
//
//        sameCountArr.append(sameCount)
//
////        print("\(i) : ", sameCount)
//
//        modified.removeAll()
    }
//
//
//    return sameCountArr.reduce(1, *)
        return 0
}

//solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"])
solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "*rodo", "******", "******"])


// 두번째 풀이
//func solution2(_ user_id:[String], _ banned_id:[String]) -> Int {
//
//    var bannedIdIdx: [Int] = []
//
//    banned_id.forEach {
//        bannedIdIdx.append($0.count)
//    }
//
//    print(bannedIdIdx)
//
//
//    // 모든 유저 아이디 경우 추출
//    for i in 0..<user_id.count {
//
//    }
//
//    print(idxArr)
//
//
//    var appliedArr: [String] = []
//
//    for i in 0..<
//
//    return 0
//}

//solution2(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"])
//solution2(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "*rodo", "******", "******"])

// 정답 풀이

var s = Set<[String]>()
var candi = [String]()
var visit = [Bool].init(repeating: false, count: 8)

func dfs(_ user_id:[String], _ banned_id:[String], _ cnt:Int) {
    if cnt == banned_id.count {
        var result = candi.sorted { $0 < $1 }
        s.insert(result)
        return
    }

    for i in 0..<user_id.count {
        if visit[i] { continue }
        if banned_id[cnt].count == user_id[i].count {
            var check = true
            var bannedIndex = banned_id[cnt].startIndex
            var userIndex = user_id[i].startIndex
            while userIndex < user_id[i].endIndex {
                if banned_id[cnt][bannedIndex] != "*", banned_id[cnt][bannedIndex] != user_id[i][userIndex] {
                    check = false
                    break
                }
                userIndex = user_id[i].index(after: userIndex)
                bannedIndex = banned_id[cnt].index(after: bannedIndex)
            }
            if check {
                visit[i] = true
                candi.append(user_id[i])
                dfs(user_id, banned_id, cnt + 1)
                candi.removeLast()
                visit[i] = false
            }
        }
    }
}

func solution3(_ user_id:[String], _ banned_id:[String]) -> Int {
    dfs(user_id, banned_id, 0)
    return s.count
}


// 따라 풀어보기

func solution4(_ user_id:[String], _ banned_id:[String]) -> Int {
    
    let userId = user_id
    let banId = banned_id
    
    var idAnswer = [[String]](repeating: [], count: banId.count)
    
    for i in 0..<userId.count {
        
        let startIdx = userId[i].startIndex
        
        for j in 0..<banId.count {

            let banStartIdx = banId[j].startIndex
            if userId[i].count == banId[j].count {
                
                var a = true
                
                for k in 0..<userId[i].count {
                    print(banId[j][banId[j].index(banStartIdx, offsetBy: k)])
                    if banId[j][banId[j].index(banStartIdx, offsetBy: k)] == "*" {
                        
//                        print("pass")
                        continue
                    }
                    
                    if userId[i][userId[i].index(startIdx, offsetBy: k)] != banId[j][banId[j].index(banStartIdx, offsetBy: k)] {
                        a = false
                        break
                    }
                }
                
                if a == true {
                    idAnswer[j].append(userId[i])
                }
            }
        }
        
        
    }
    
    
    return 0
}

//solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"])
solution4(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "*rodo", "******", "******"])
