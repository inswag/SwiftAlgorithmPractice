//: [Previous](@previous)

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic: [String: [String]] = [:]
    
    clothes.forEach {
        if dic[$0.last!] == nil {
            dic[$0.last!] = [$0.first!]
        } else {
            dic[$0.last!]?.append($0.first!)
        }
    }
    
    return dic.map { $0.value.count + 1 }.reduce(1, *) - 1
}

solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]    )
solution([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]]    )
