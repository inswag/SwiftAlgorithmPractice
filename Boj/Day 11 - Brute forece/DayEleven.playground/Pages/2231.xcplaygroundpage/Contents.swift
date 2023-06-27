import UIKit

let input = Int(readLine()!) ?? 0

var isFind: Bool = false

for i in 1...1000000 {
    let num = i
    var eachNums: [Int] = []
    
    for n in String(i) {
        eachNums.append((Int(String(n)) ?? 0))
    }
    
    if num + eachNums.reduce(0, +) == input {
        print(num)
        isFind = true
        break
    }
}

if !isFind {
    print(0)
}
