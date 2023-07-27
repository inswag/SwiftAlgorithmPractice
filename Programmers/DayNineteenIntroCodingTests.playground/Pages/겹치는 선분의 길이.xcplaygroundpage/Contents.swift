//: [Previous](@previous)

import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var first = Array(lines[0].first!...lines[0].last!).map { ($0, $0 + 1) }
    var second = Array(lines[1].first!...lines[1].last!).map { ($0, $0 + 1) }
    var third = Array(lines[2].first!...lines[2].last!).map { ($0, $0 + 1) }
    
    first.removeLast()
    second.removeLast()
    third.removeLast()
    
    print(first)
    print(second)
    print(third)
    
    let fToS = Set(findCorrespondance(first, second).map { "\($0.0)\($0.1)" })
    let sToT = Set(findCorrespondance(second, third).map { "\($0.0)\($0.1)" })
    let tToF = Set(findCorrespondance(third, first).map { "\($0.0)\($0.1)" })
    
    func findCorrespondance(_ arrOne: [(Int, Int)], _ arrTwo: [(Int, Int)]) -> [(Int, Int)] {
        var result: [(Int, Int)] = []
        
        for i in arrOne {
            for j in arrTwo {
                if i.0 == j.0 && i.1 == j.1 {
                    result.append(i)
                    break
                }
            }
        }
        
        return result
    }
    
    print("======")
    print(fToS)
    print(sToT)
    print(tToF)
    print("==============")
    
    let common = fToS.union(sToT).union(tToF)
    print("c : ", common)
    print("=======END=======")
    
    return common.count
    
    
//    return (first.count > 1 ? first.count - 1 : 0) + (second.count > 1 ? second.count - 1 : 0) + (third.count > 1 ? third.count - 1 : 0)
}



solution([[0, 1], [2, 5], [3, 9]])

solution([[-1, 1], [1, 3], [3, 9]])

solution([[0, 5], [3, 9], [1, 10]])

solution([[0,2], [-3,-1], [-2,1]])

solution([[-3, -1], [-2, 3], [2, 3]])

solution([[0, 3], [-3, -1], [-2, 3]])
