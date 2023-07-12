//: [Previous](@previous)

import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var students: [Student] = []
    
    for i in 0..<rank.count {
        let student = Student(rank: rank[i],
                              attendance: attendance[i],
                              index: i)
        students.append(student)
    }
    
    let filteredStudents = students.sorted {
        $0.rank < $1.rank
    }.filter {
        $0.attendance
    }
    
    print("fs : ", filteredStudents)
    
    let first = filteredStudents[0].index
    let second = filteredStudents[1].index
    let third = filteredStudents[2].index
    
    return (10000 * first) + (100 * second) + third
}

struct Student {
    let rank: Int
    let attendance: Bool
    let index: Int
}

solution([3, 7, 2, 5, 4, 6, 1]    , [false, true, true, true, true, false, false]    )

/*
 다른 사람의 풀이
 - 흠 너무 어렵게 생각했나보다 아래와 같이 했으면 금방 풀릴 문제 ㅋㅋ
 */

func solution2(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let stu: [Int] = rank.enumerated()
        .filter { attendance[$0.offset] }
        .sorted(by: { $0.element < $1.element })
        .map { $0.offset }
    return stu[0] * 10000 + stu[1] * 100 + stu[2]
}
