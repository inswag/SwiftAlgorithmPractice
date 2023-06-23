import UIKit

let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
var nums: [Int] = []

for i in 1...input.first! {
    if input.first! % i == 0 {
        nums.append(i)
    }
}

if nums.count < input.last! {
    print(0)
} else {
    print(nums[input.last! - 1])
}
