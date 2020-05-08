//: [Previous](@previous)

import Foundation

func solution(_ k:Int64, _ room_number:[Int64]) -> [Int64] {
    
    // 첫 손님은 반드시 원하는 방을 가진다.
    
    var requestedRoomNumberIdx: [Int64] = []
    var occupieIdx: [Int64] = []
    
    for i in room_number {
        requestedRoomNumberIdx.append(i - 1)
    }

    print(requestedRoomNumberIdx)

    for n in requestedRoomNumberIdx {
        
        
        
        
    }
    
    print(occupieIdx)
    
//    occupieIdx.append(i - 1)          // 1번방 점유
    
    for j in occupieIdx {
        
    }
    
    return []
}
//: [Next](@next)
// k: 전체 방 개수 & room_number: 고객이 원하는 방 번호
solution(10, [1,3,4,1,3,1]) // Result : [1,3,4,2,5,6]
