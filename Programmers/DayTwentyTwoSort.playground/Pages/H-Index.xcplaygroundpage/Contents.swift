//: [Previous](@previous)

import Foundation

// 정확도 6.3/100
//func solution(_ citations:[Int]) -> Int {
//    for citation in citations.sorted(by: > ) {
//        let firstCon = citation == citations.filter { $0 >= citation }.count
//        let secCon = citation == citations.filter { $0 <= citation }.count
//
//        if firstCon && secCon {
//            return citation
//        }
//    }
//
//    return 0
//}

func solution(_ citations:[Int]) -> Int {
    for (idx, citation) in citations.sorted(by: > ).enumerated() {
        print("idx: \(idx), citation: \(citation)")
        
        if idx >= citation {
            return idx
        }
    }
    
    return citations.count
}

solution([3,0,6,1,5])
solution([7,7,7,7,3])
solution([10,10,10,10,10])
