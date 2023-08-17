//: [Previous](@previous)

import Foundation

func solution(_ numbers:String) -> Int {
    let permutation = makePermutation(from: numbers.map { Int(String($0)) ?? 0 }).map {
        $0.map { String($0) }.joined()
    }.filter {
        let sqrtValue = sqrt(Double($0) ?? 0.0)
        
        for i in 2..<Int(sqrtValue) {
            if (Int($0) ?? 0) % i == 0 {
                return false
            }
        }
        
        return true
    }
    
    return permutation.count
}

// Ref Code
func findPrime(_ num: Int) -> Bool {
    if num < 4 {
        return (num <= 1) ? false : true
    } else {
        for i in 2...Int(sqrt(Double(num))) {
            if num % i == 0 {
                return false
            }
        }
    }
    
    return true
}

// Ref Code
func makePermutation(from nums: [Int]) -> [[Int]] {
    // 중복을 허용하지 않게 만들어야 하므로 아래와 같이 사용여부를 체크해줍니다.
    var result: [[Int]] = []
    var preventedDuplicationArr: [Bool] = [Bool](repeating: false, count: nums.count)
    
    // 만약 현재 순열의 원소 수가 주어진 원소수와 같다면 결과에 추가!
    func executeIterator(from elements: [Int]) {
        if elements.count == nums.count {
            result.append(elements)
            return
        }
        
        // 이미 사용한 값이라면 넘어갑니다.
        for i in 0..<nums.count {
            if preventedDuplicationArr[i] {
                continue
            } else {
                preventedDuplicationArr[i] = true
                executeIterator(from: elements + [nums[i]])
                preventedDuplicationArr[i] = false
            }
        }
    }
    
    executeIterator(from: [])
    
    return result
}

solution("17")

// Ref Code
func isPrime(_ num: Int) -> Bool {
    if num < 4 {
        return (num <= 1) ? false : true
    } else {
        for i in 2...Int(sqrt(Double(num))) {
            if num % i == 0 {
                return false
            }
        }
    }
    
    return true
}

func solution3(_ numbers:String) -> Int {
    let nums: [String] = numbers.map { String($0) } // 1, 7
    var visited: [Bool] = []
    var numSet: Set<Int> = []
    
    func permutation(_ numArr: [String], count: Int, rCount: Int) {
        if count == rCount {
            numSet.insert(Int(numArr.joined())!)
            return
        }
        
        for (i, n) in nums.enumerated() {
            if visited[i] {
                continue
            }
            
            var newNumArr = numArr
            newNumArr.append(n)
            
            visited[i] = true
            permutation(newNumArr, count: count+1, rCount: rCount)
            visited[i] = false
        }
    }
    
    for i in 1...nums.count {
        visited = Array(repeating: false, count: nums.count)
        permutation([], count: 0, rCount: i)
    }
        
    return numSet.filter { isPrime($0) }.count
}

solution3("17")
