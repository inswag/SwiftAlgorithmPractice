//: [Previous](@previous)

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
    let absX: Int = abs(x)
    var value: Int64 = Int64(absX)
    
    for i in 1...n {
        if i > 1 { value += Int64(absX) }
        result.append(value)
    }

    return x < 0 ? result.map { $0 * -1 } : result
}

solution(2, 5)
solution(-2, 5)
solution(3, 5)
solution(-3, 5)

// 마이너스가 문제.. 흠..

// 일단 모두 양수처럼 만들어서 계산한 다음 x 가 음수인지 판단해서 x 일 경우 -1 을 곱해주는걸로.

// 너무 바보같은 풀이를 했다.. 생각해보니 모두 1 * x, 2 * x, 3 * x 이런 식이잖아..
//Array(1...n).map { Int64($0 * x) }

func solution2(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}

solution2(-3, 5)
