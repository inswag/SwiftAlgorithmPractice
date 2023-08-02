//: [Previous](@previous)

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var newPriorities = priorities.enumerated().map {
        return ForPriority(element: $0.element,
                           isFindValue: $0.offset == location)
    }

    var result: [ForPriority] = []

    while result.count != priorities.count {
        for (idx, newPriority) in newPriorities.enumerated() {
            let checkPriorities: Bool = newPriorities.filter { $0.element > newPriority.element }.count == 0

            if checkPriorities {
                // 우선순위가 더 높은 친구가 없다. == 프로세스를 실행해도 된다.
                newPriority.priorityOrder = result.count
                let findPriority = newPriorities.removeFirst()
                result.append(findPriority)

                if findPriority.isFindValue {
                    return findPriority.priorityOrder + 1
                }

                break
            } else {
                // 우선순위가 더 높은 친구가 내부에 있다. == 프로세스를 First Out Last In 한다.
                let first = newPriorities.removeFirst()
                newPriorities.append(first)
            }
        }
    }

    return 0
}

class ForPriority {
    let element: Int
    let isFindValue: Bool
    var priorityOrder: Int = -1

    init(element: Int, isFindValue: Bool) {
        self.element = element
        self.isFindValue = isFindValue
    }
}

solution([2,1,3,2], 2)
solution([1,1,9,1,1,1], 0)
