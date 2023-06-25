//: [Previous](@previous)

import Foundation

/*
 기약분수란 분모와 분자의 공약수가 1뿐인 분수 입니다.
 따라서, 분모와 분자를 그들의 최대공약수로 나누면 기약분수가 됩니다.
 
 분모가 다를 때 분수의 덧셈
 -> 분모의 최소공배수를 구한다.
 
 최소공배수를 구하기 위해서는 최대공약수를 알아야 한다.
 
 쉽게 풀자면 최대공약수와 최소공배수 중 하나의 값만 구하면 나머지 하나는 쉽게 알 수 있다.
 최대공약수는 유클리드 호제법을 통해 쉽게 구할 수 있다.
 
 < 유클리드 호제법 >
 - A를 B로 나눈 몫을 Q라 하고, 나머지를 R이라 했을 때 이 때, A,B의 최대공약수는 B,R의 최대공약수와 같다
 
 - A와 B값이 주어지면 A값을 B로 나눈 나머지값이 0일때까지 루프를 도는 재귀함수 형태로 gcd(_a: Int, _b: Int) 라는 함수를 통해 최대공약수를 구한 후, 앞서 말한 ab = 최대공약수 * 최소공배수 를 활용해 "a * b / 최대공약수 = 최소공배수" 까지 구할 수 있다.
 */

func solution(_ numer1:Int,
              _ denom1:Int,
              _ numer2:Int,
              _ denom2:Int) -> [Int] {
    let lcm = getLCM(denom1, denom2)

    let firstMultiple = getMultiples(denom1, lcm)
    let secMultiple = getMultiples(denom2, lcm)

    let newNumer1 = numer1 * firstMultiple
    let newNumer2 = numer2 * secMultiple


    let firstResult = newNumer1 + newNumer2

    let gcd = getGCD(firstResult, lcm)
    return [(newNumer1 + newNumer2) / gcd, lcm / gcd]
}

// greatest common divisor
func getGCD(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : getGCD(b, a % b)
}

// Least common multiple
func getLCM(_ a: Int, _ b: Int) -> Int {
    return (a * b) / getGCD(a, b)
}

func getMultiples(_ a: Int, _ b: Int) -> Int {
    return b / a
}

/*
 다른 사람의 풀이
 - 분자를 구할 때는 X 자 모양으로 두 분수를 곱하여 구한다는 것은 수학적으로 알고 있었으나 그 다음을 진행하기가 쉽지 않았다. 아래의 푸신 분은 이를 기반으로 잘 풀어나가신 듯 배울 점이 있다.
 */

//func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//    let boonja = denum1 * num2 + denum2 * num1
//    let boonmo = num1 * num2
//    let gcd = (1...min(boonja, boonmo)).filter { boonja % $0 == 0 && boonmo % $0 == 0 }.max()!
//    return [boonja/gcd, boonmo/gcd]
//}

//: [Next](@next)
