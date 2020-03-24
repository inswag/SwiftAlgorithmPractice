//: [Previous](@previous)

import Foundation

// 첫번쨰 풀이 (실패)
func solution2(_ answers:[Int]) -> [Int] {
    
    let firstPerson = [1,2,3,4,5]
    let secondPerson = [2,1,2,3,2,4,2,5]
    let thirdPerson = [3,3,1,1,2,2,4,4,5,5]
    
    var firstAnswerCount: Int = 0
    var secondAnswerCount: Int = 0
    var thirdAnswerCount: Int = 0
    
    var arr: [Int] = []
    var result: [Int] = []
    
    for i in 0..<answers.count {
        
        if firstPerson[i % 5] == answers[i] {
            firstAnswerCount += 1
        }
        
        if secondPerson[i % 8] == answers[i] {
            secondAnswerCount += 1
        }
        
        if thirdPerson[i % 10] == answers[i] {
            thirdAnswerCount += 1
        }

    }
    
    if firstAnswerCount != 0 {
        arr.append(firstAnswerCount)
    }
    
    if secondAnswerCount != 0 {
        arr.append(secondAnswerCount)
    }
    
    if thirdAnswerCount != 0 {
        arr.append(thirdAnswerCount)
    }
    
    arr.sort(by: >)
    
    for i in 0..<arr.count {
        result.append(i + 1)
    }
    
    return result
}

// Comment

// 두번째 풀이 (실패)
func solution3(_ answers:[Int]) -> [Int] {
    
    let firstPerson = [1,2,3,4,5]
    let secondPerson = [2,1,2,3,2,4,2,5]
    let thirdPerson = [3,3,1,1,2,2,4,4,5,5]
    
    var firstAnswerCount: Int = 0
    var secondAnswerCount: Int = 0
    var thirdAnswerCount: Int = 0
    
    var dictionary = [(key: String, value: Int)]()
    var result: [Int] = []
    
    for i in 0..<answers.count {
        
        if firstPerson[i % 5] == answers[i % 5] {
            firstAnswerCount += 1
        }
        
        if secondPerson[i % 5] == answers[i % 8] {
            secondAnswerCount += 1
        }
        
        if thirdPerson[i % 5] == answers[i % 10] {
            thirdAnswerCount += 1
        }
    }
    
    // 각 사람의 정답 갯수가 나옴
    
    let count: [String: Int] = ["1": firstAnswerCount, "2":secondAnswerCount, "3":thirdAnswerCount]
    dictionary = count.sorted { $0 < $1 }
    
    for key in dictionary {
        if key.value != 0 {
            result.append(Int(key.key)!)
        }
    }
    
    return result
}

// 세 번째 풀이 (정답)
func solution(_ answers:[Int]) -> [Int] {

    let firstPerson = [1,2,3,4,5]
    let secondPerson = [2,1,2,3,2,4,2,5]
    let thirdPerson = [3,3,1,1,2,2,4,4,5,5]

    var firstAnswerCount: Int = 0
    var secondAnswerCount: Int = 0
    var thirdAnswerCount: Int = 0

    for i in 0..<answers.count {

        if firstPerson[i % 5] == answers[i] {
            firstAnswerCount += 1
        }

        if secondPerson[i % 8] == answers[i] {
            secondAnswerCount += 1
        }

        if thirdPerson[i % 10] == answers[i] {
            thirdAnswerCount += 1
        }
    }

    let count: [String: Int] = ["firstPerson": firstAnswerCount,
                                "secondPerson": secondAnswerCount,
                                "thirdPerson": thirdAnswerCount]

    if count["firstPerson"]! > count["secondPerson"]! {
        if count["firstPerson"]! > count["thirdPerson"]! {
            return [1]
        } else if count["firstPerson"] == count["thirdPerson"] { // 왜 이거랑 아래를 바꾸면 문제가 될까?
            return [1,3]
        }
        return [3]
    } else if count["firstPerson"]! < count["secondPerson"]! {
        if count["secondPerson"]! > count["thirdPerson"]! {
            return [2]
        } else if count["secondPerson"]! == count["thirdPerson"]! {
            return [2,3]
        }
        return [3]
    } else if count["firstPerson"] == count["secondPerson"] {
        if count["firstPerson"]! > count["thirdPerson"]! {
            return [1,2]
        } else if count["firstPerson"] == count["thirdPerson"] {
            return [1,2,3]
        } else if count["firstPerson"]! < count["thirdPerson"]! {
            return [3]
        }
    }

    return [0]
}

solution([1,2,3,4,5])

// 모범답안
func solution4(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1, 2, 3, 4, 5], // index % 5
        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
    )
    var point = [1:0, 2:0, 3:0]

    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}

// Comment
"""
매번 String : Any 만 다루다보니 딕셔너리가 Int : Int 가 가능하다는 사실을 나도 모르게 망각해버렸다.
enumerated() 함수를 사용하면 index 와 값을 튜플 형식으로 동시에 접근할 수 있어 이를 활용한 모범 답안이 좋다고 생각한다.
"""
