import UIKit

func solution(_ array:[Int]) -> Int {
    var dic: [Int: [Int]] = [:]
    
    for num in array {
        if dic[num] != nil {
            dic[num]?.append(num)
        } else {
            dic[num] = [num]
        }
    }
    
    // most frequent value count
    var mfvc: Int = 0
    // most frequent value
    var mfv: Int = 0
    // check same mfvc exist
    var isDuplicated: Bool = false
    
    for d in dic {
        if d.value.count > mfvc {
            isDuplicated = false
            mfvc = d.value.count
            mfv = d.key
        } else if d.value.count == mfvc {
            isDuplicated = true
        }
    }

    return isDuplicated ? -1 : mfv
}
