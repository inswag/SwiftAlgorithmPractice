//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// 양 손의 엄지로 숫자 키패드 판을 입력해야 한다.
// 왼손 엄지의 첫 위치는 *
// 오른손 엄지의 첫 위치는 #
// 엄지손가락은 상 하 좌 우 이동 가능
// 키패드 이동 한 칸은 거리로 1
// 1, 4, 7 을 입력할 때는 왼손 엄지 사용
// 3, 6, 9 를 입력할 때는 오른손 엄지 사용
// 2, 5, 8, 0 을 임력할 때는 두 엄지 손가락의 현재 키패드의 위치에서 더 가까운 엄지 사용


func solution(_ numbers:[Int], _ hand:String) -> String {
    
    var leftHandIdx: Int = 0
    var rightHandIdx: Int = 0
    var middleIdx: Int = 0
    
    let leftHanNum: [String] = ["*", "7", "4", "1"]
    let rightHanNum: [String] = ["#", "9", "6", "3"]
    let middleNum: [String] = ["0", "8", "5", "2"]
    
    let myHandType: String = hand
    
    var leftHandMidArea: Bool = false
    var rightHandMidArea: Bool = false
    
    var result: String = ""
    
    let strNum = numbers.map { String($0) }
    strNum.forEach {
        switch $0 {
        case "*", "7", "4", "1":
            for i in 0..<leftHanNum.count {
                if $0 == leftHanNum[i] {
                    leftHandIdx = i
                    result += "L"
                    leftHandMidArea = false
                }
            }
            print("1 구역 : ", $0)
            
            
            
            
        case "0", "8", "5", "2":
            for i in 0..<middleNum.count {

                if $0 == middleNum[i] {
                    
                    middleIdx = i + 4        // 4
                    
//                    if leftHandMidArea == true && rightHandMidArea == true {
//                        leftHandIdx += 1
//                        rightHandIdx += 1
//                    }
                    
                    if abs(leftHandIdx - middleIdx) == abs(rightHandIdx - middleIdx) {
                        switch myHandType {
                        case "right":
                            result += "R"
                            rightHandIdx -= 1
                            rightHandMidArea = true
                            
                        default:
                            result += "L"
                            leftHandIdx -= 1
                            leftHandMidArea = true
                            
                        }
                    } else if abs(leftHandIdx - middleIdx) > abs(rightHandIdx - middleIdx) {
                        result += "R"
//                        if leftHandMidArea == true, rightHandMidArea == true {
//                            break
//                        }
                        rightHandIdx -= 1
                        rightHandMidArea = true
                    } else {
                        result += "L"
//                        if leftHandMidArea == true, rightHandMidArea == true {
//                            break
//                        }
                        leftHandIdx -= 1
                        leftHandMidArea = true
                        
                    }
                }
                
            }
            print("2 구역 : ", $0)
            
            
            
            
        case "#", "9", "6", "3":    // "3"
            for i in 0..<rightHanNum.count {
                if $0 == rightHanNum[i] {
                    rightHandIdx = i
                    result += "R"
                    rightHandMidArea = false
                }
            }
            print("3 구역 : ", $0)
        default:
            break
        }
    }
    
    print(result + "끝")
    
    
    return ""
}

//solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5],  "right") // "LRLLLRLLRRL"
// 인덱스가 같다면 right 인지 left 인지에 따라서 R 과 L 이 정해진다.
solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left")
// 결과 : LRLLLRLLLRR
// 정답 : LRLLRRLLLRR
