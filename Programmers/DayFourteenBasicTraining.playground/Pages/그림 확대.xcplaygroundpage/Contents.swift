import UIKit

func solution(_ picture:[String], _ k:Int) -> [String] {
    var result: [String] = []
    
    for p in picture {
        var convertArr: [String] = []
        
        p.forEach {
            convertArr.append(String.init(repeating: $0,
                                      count: k))
        }
        
        for _ in 0..<k {
            result.append(convertArr.joined())
        }
        
        print("result : ", result)
    }
    
    return result
}

solution([".xx...xx.", "x..x.x..x", "x...x...x", ".x.....x.", "..x...x..", "...x.x...", "....x...."], 2)
