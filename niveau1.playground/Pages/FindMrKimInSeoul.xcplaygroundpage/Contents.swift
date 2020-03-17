//: [Previous](@previous)

// 내 풀이 : 썩 좋지 않은 풀이. firstIndex(of: ) 를 결국 몰랐기 때문에 길어짐.

func solution(_ seoul:[String]) -> String {
    
    var position: Int = 0
    
    if seoul.count < 1 || seoul.count > 1000 {
        return "Error"
    }
    
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
                break
        }
        position += 1
    }
    
    return "김서방은 \(position)에 있다"
}

solution(["Kim", "oh", "lee"])


// 모범 풀이

func solution2(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}
