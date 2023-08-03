import UIKit

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    
    var result: [Int] = []
    
    for i in 0..<commands.count {
        let arr = commands[i]
        
        let startIdx = arr[0] - 1 // 1
        let endIdx = arr[1] - 1   // 4
        let numberIdx = arr[2] - 1 // 1
        
        var sliceArr: [Int] = []
        
        for j in startIdx...endIdx {
            sliceArr.append(array[j])
        }
        
        sliceArr.sort(by: <)
        result.append(sliceArr[numberIdx])
        
    }
    
    return result
}
