//: [Previous](@previous)

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var result: [[Int]] = []
    
    if arr1[0].count == 1 {
        
        print(arr1[0][0])
        print(arr1[1][0])
        print(arr2[0][0])
        print(arr2[1][0])
        
        
        return [[arr1[0][0] + arr2[0][0]], [arr1[1][0]+arr2[1][0]]]
    }
    
    for i in 0..<arr1.count {

        var temp: [Int] = []

        for n in 0..<arr2.count {
            let first = arr1[i][n]
            let second = arr2[i][n]

            print(first)
            print(second)

            temp.append(first + second)
        }
        result.append(temp)
    }
    
    return result
    
}

let arr1 = [[1], [2]]
let arr2 = [[3], [4]]


//let arr1 = [[1, 2], [2, 3]]
//let arr2 = [[3, 4], [5, 6]]

solution(arr1, arr2)

// solution(arr1, arr2)
// result

//[[4,6],
// [7,9]]
