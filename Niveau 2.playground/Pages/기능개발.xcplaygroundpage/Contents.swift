//: [Previous](@previous)

import Foundation

// [30, 93, 55], [1, 30, 5]

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    guard progresses.count < 100,
        speeds.count < 100,
        progresses.count == speeds.count else { return [] }
    
    
    var release: Int = 0
    var releaseArr: [Int] = []
    var progressesArr: [Int] = progresses
    var speedsArr: [Int] = speeds
    
    
    for d in 1...100 {          // d : Day
        
        if progressesArr.count == 0 {
            break
        }
        
        for i in 0..<progressesArr.count {
            progressesArr[i] += speedsArr[i]
        }
        
//        print("\(d)번째 실행 시 : ", progressesArr)
        
        if progressesArr[0] >= 100 {
            
            for j in progressesArr {
                if j >= 100 {
                    release += 1
                } else{
                    break
                }
            }
            
            releaseArr.append(release)
            
            for i in 0..<release {
                progressesArr.remove(at: 0)
                speedsArr.remove(at: 0)
//                print(progressesArr)
//                print(speedsArr)
            }
            
//            print(progressesArr)
//            print(speedsArr)
            
            release = 0
        }
        
    }
    
    
    
//    print(progressesArr)
    
    
    return releaseArr
}

// progresses : 작업의 진도가 적힌 정수 배열
// speeds : 각 작업의 개발 속도가 적힌 정수 배열
// 각 배포때마다 몇 개의 기능이 배포되는가?

// 쉽게 생각해서 progress 각각을 계속 증가시키는데
// 첫 배열이 100 이 되면 각 배열에서 첫번째 요소만 제거하면 된다.
// 즉, 첫 인덱스가 100이 되었을 때 배열의 100인 개수를 리턴하면 된다.

//solution([93, 30, 55], [1, 30, 5])
//solution([30, 93, 55], [1, 30, 5])
//solution([93, 55, 30], [1, 30, 5])
//solution([55, 93, 30], [1, 30, 5])
//solution([30, 55, 93], [1, 30, 5])
solution([55, 30, 93, 30, 93, 30, 93, 30, 93, 30, 93, 30, 93, 30, 93], [40, 30, 5, 30, 5, 30, 5, 30, 5, 30, 5, 30, 5, 30, 5])

solution([5, 5, 5], [21, 25, 20])
//solution([30], [20])
//progresses = [5, 5, 5]
//speeds = [21, 25, 20]


// 곰튀김님 정답 !

func solution2(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    return zip(progresses, speeds)
        .map { (100 - $0) / $1 }
        .reduce(([], 0)) { (tuple, day) -> ([Int], Int) in
            let (list, lastMax) = tuple
            guard let lastCount = list.last else {
                return ([1], day)
            }
            if lastMax >= day {
                return (list.dropLast() + [lastCount + 1], lastMax)
            }
            return (list + [1], day)
        }.0
}

// zip : 두 리스트를 짝지어서 합쳐준다.
