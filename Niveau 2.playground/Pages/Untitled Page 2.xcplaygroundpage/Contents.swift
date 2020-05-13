//: [Previous](@previous)

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    
    guard numbers.count > 0, numbers.count < 1001 else { return "" }
    
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
        case "0", "8", "5", "2":
            
            if leftHandMidArea == true, rightHandMidArea == true {
                for i in 0..<middleNum.count {
                    if $0 == middleNum[i] {
                        middleIdx = i
                        if abs(leftHandIdx - middleIdx) > abs(rightHandIdx - middleIdx) {
                            result += "R"
                            rightHandIdx = middleIdx
                        } else {
                            result += "L"
                            leftHandIdx = middleIdx
                        }
                    }
                }
            } else if leftHandMidArea == true, rightHandMidArea == false {
                for i in 0..<middleNum.count {
                    if $0 == middleNum[i] {
                        middleIdx = i
                        if abs(leftHandIdx - middleIdx) < (rightHandIdx - middleIdx) {
                            switch myHandType {
                            case "right":
                                result += "R"
                                rightHandIdx = middleIdx
                                rightHandMidArea = true
                            default:
                                result += "L"
                                leftHandIdx = middleIdx
                            }
                        } else {
                            result += "L"
                            leftHandIdx = middleIdx
                        }
                    }
                }
            } else if leftHandMidArea == false, rightHandMidArea == true {
                for i in 0..<middleNum.count {
                    if $0 == middleNum[i] {
                        middleIdx = i
                        if abs(leftHandIdx - middleIdx) > (rightHandIdx - middleIdx) {
                            switch myHandType {
                            case "right":
                                result += "R"
                                rightHandIdx = middleIdx
                            default:
                                result += "L"
                                leftHandIdx = middleIdx
                                leftHandMidArea = true
                            }
                        } else {
                            result += "L"
                            leftHandIdx = middleIdx
                        }
                    }
                }
            } else {    // false / false
                for i in 0..<middleNum.count {
                    if $0 == middleNum[i] {
                        middleIdx = i
                        if abs(leftHandIdx - middleIdx) == abs(rightHandIdx - middleIdx) {
                            if leftHandIdx > rightHandIdx {
                                result += "L"
                                leftHandIdx = middleIdx
                                leftHandMidArea = true
                            } else if leftHandIdx < rightHandIdx  {
                                result += "R"
                                rightHandIdx = middleIdx
                                rightHandMidArea = true
                            } else {
                                switch myHandType {
                                case "right":
                                    result += "R"
                                    rightHandIdx = middleIdx
                                    rightHandMidArea = true
                                default:
                                    result += "L"
                                    leftHandIdx = middleIdx
                                    leftHandMidArea = true
                                }
                            }
                        } else if abs(leftHandIdx - middleIdx) > abs(rightHandIdx - middleIdx) {
                            result += "R"
                            rightHandIdx = middleIdx
                            rightHandMidArea = true
                        } else {
                            result += "L"
                            leftHandIdx = middleIdx
                            leftHandMidArea = true
                        }
                    }
                }
            }
        case "#", "9", "6", "3":
            for i in 0..<rightHanNum.count {
                if $0 == rightHanNum[i] {
                    rightHandIdx = i
                    result += "R"
                    rightHandMidArea = false
                }
            }
        default:
            break
        }
    }

    
    return result
}


//solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left")
// 정답 : LRLLRRLLLRR
solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")
// 실행 : LRLLRLLLRRL
// 정답 : LRLLLRLLRRL
// 문제 : 8 과 2 에서 문제 발생
//solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "right")
