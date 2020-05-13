//: [Previous](@previous)

import Foundation

// 첫 번쨰 풀이
func solution2(_ strings:[String], _ n:Int) -> [String] {
    let result = strings.sorted {
        if Array($0)[n] == Array($1)[n] {
            return Array($0)[n + 1] < Array($1)[n + 1]
        }
            return Array($0)[n] < Array($1)[n]
    }
    
    return result
}


func solution3(_ strings:[String], _ n:Int) -> [String] {

    var result = strings
    
    for i in 0..<(result.count-1) {
        
        print("first : ", strings[i][result[i].index(result[i].startIndex, offsetBy: n)])
        print("Second : ", strings[i][result[i+1].index(result[i+1].startIndex, offsetBy: n)])
        
        if result[i].index(result[i].startIndex, offsetBy: n) < result[i+1].index(result[i+1].startIndex, offsetBy: n) {
            result.swapAt(i, i+1)
            print("Pass")
        }
    }

    print(result)
    
    if "u" > "e" {
        print("ok")
    }
    
    return [""]
}

func solution(_ strings:[String], _ n:Int) -> [String] {
    
    let result = strings.sorted {
        if $0[$0.index($0.startIndex, offsetBy: n)] == $1[$1.index($1.startIndex, offsetBy: n)] {
            if $0 > $1 { return false } else if $0 < $1 { return true } else { return true }
        } else if $0[$0.index($0.startIndex, offsetBy: n)] > $1[$1.index($1.startIndex, offsetBy: n)] {
            return false
        } else if $0[$0.index($0.startIndex, offsetBy: n)] < $1[$1.index($1.startIndex, offsetBy: n)] {
            return true
        }
        return true
        
        
        
    }
    return result
}

solution(["sun", "bed", "car"], 1)
solution(["abce", "abcd", "cdx"], 2)
solution(["abce", "abcd", "cdx", "abce", "abcd", "cdx"], 2)
// Comments
//




