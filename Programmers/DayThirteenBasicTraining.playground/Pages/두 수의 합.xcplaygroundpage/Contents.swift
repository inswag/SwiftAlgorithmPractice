import UIKit

func solution(_ a:String, _ b:String) -> String {
    var firstSumArr: [Int] = []
    
    let intA = Array(a.map { Int(String($0)) ?? 0 }.reversed())
    let intB = Array(b.map { Int(String($0)) ?? 0 }.reversed())
    
    if intA.count > intB.count {
        firstSumArr = makeSum(intB, intA)
    } else {
        firstSumArr = makeSum(intA, intB)
    }
    
    print(Array(firstSumArr.reversed()).map { String($0) }.joined())
 
    return ""
}

func makeSum(_ short: [Int], _ long: [Int]) -> [Int] {
    var plus: Int = 0
    var sumArr: [Int] = []
    
    for i in 0..<short.count {
        var sum = short[i] + long[i]
        
        if plus > 0 {
            sum += 1
            plus = 0
        }
        
        if sum > 9 {
            plus += 1
        }
        
        if i == short.count - 1 {
            sumArr.append(sum)
        } else {
            sumArr.append(sum % 10)
        }
    }
    
    if short.count == long.count {
        return sumArr
    } else {
        let distance = long.count - short.count
        
        if plus > 0 {
            sumArr[sumArr.count - 1] = sumArr.last! % 10
        }
        
        for i in 0..<(long.count - short.count) {
            var next = long[short.count + i]

            if plus > 0 {
                next += 1
                plus = 0
            }

            if next > 9 {
                plus += 1
            }

            if short.count + (i) == long.count {
                sumArr.append(next)
            } else {
                sumArr.append(next % 10)
            }
        }
         
        return sumArr
    }
    
}

solution("582", "734")

/*
 하나의 케이스만 통과하지 못하는 불상사가 발생.. 다른 분의 코드 확인 후 다시 풀어보자
 */

func solution2(_ a:String, _ b:String) -> String {
    var a = a
    var b = b

    var temp = 0
    var result = ""

    while true {
        var sum = temp

        if a != "" {
            guard let aLast = a.last,
                  let intA = Int(String(aLast)) else { break }
            sum += intA
            a.removeLast()
        }

        if b != "" {
            guard let bLast = b.last,
                  let intB = Int(String(bLast)) else { break }
            sum += intB
            b.removeLast()
        }

        result = String(sum % 10) + result
        temp = sum / 10

        if a == "" && b == "" {
            break
        }
    }

    if temp != 0 {
        result = String(temp) + result
    }

    return result
}
