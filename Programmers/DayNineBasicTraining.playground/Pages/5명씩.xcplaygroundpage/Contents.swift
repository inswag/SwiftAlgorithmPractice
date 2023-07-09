import UIKit

func solution(_ names:[String]) -> [String] {
    return names
        .enumerated()
        .filter { $0.offset % 5 == 0 }
        .map { $0.element }
}

solution(["nami", "ahri", "jayce", "garen", "ivern", "vex", "jinx"]    )
