//: [Previous](@previous)

// First Answer

func solution2(_ arr:[Int]) -> [Int] {
    if arr.count < 2 {
        return [-1]
    }
    
    var newArr = arr.sorted(by: > )
    newArr.removeLast()
    return newArr
}

func solution(_ arr:[Int]) -> [Int] {
    
    // 리텬하려는 배열이 빈 배열인 경우 -1 리턴 == 하나 있었는데 제거하니 빈 배열 == 배열의 갯수가 1 이하
    
    if arr.count < 2 { return [-1] }
    
    // [4, 3, 2, 1] 인 경우 [4, 3, 2] 리턴
    // 값을 처음부터 하나씩 꺼내 변수에 저장 후 다음 것과 비교
    
    var value = arr[0]
    var minIdx = 0
    
    for i in 1..<arr.count {
        if arr[i] < value {
            value = arr[i]
            minIdx = i
        }
    }
    
    var newArr = arr
    newArr.remove(at: minIdx)
    return newArr
    
}

solution([4,3,2,1])

// 좋은 풀이 1
func solution3(_ arr:[Int]) -> [Int] {
    var answer = arr
    answer.remove(at:answer.firstIndex(of:arr.min()!)!)
    return answer.isEmpty ? [-1] : answer
}

// 좋은 풀이 2
func solution4(_ arr:[Int]) -> [Int] {
    var answer = arr
    answer.remove(at:answer.firstIndex(of:answer.sorted { $0 < $1 }[0])!)
    return answer.isEmpty ? [-1] : answer
}
