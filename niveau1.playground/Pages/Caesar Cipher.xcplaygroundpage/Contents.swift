//: [Previous](@previous)

import Foundation

// 두 번째 풀이 : 정답
func solution3(_ s: String, _ n: Int) -> String {
    
    let lowercase: [String.Element] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    let uppercase: [String.Element] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    // 혹은 위의 배열을 이렇게 선언해도 되겠다
//    let lowercase: [String.Element] = Array("abcdefghijklmnopqrstuvwxyz")
//    let uppercase: [String.Element] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    var stringResult: String = ""
    
    for i in 0..<s.count { // "abcd" == 4 -> 0, 1, 2, 3
        
        let selected = Array(s)[i]

        if selected.isLowercase {
            for j in 0..<lowercase.count {
                if selected == lowercase[j] {
                    stringResult += String(lowercase[(j + n) % 26])
                }
            }
        } else if selected.isUppercase {
            for j in 0..<uppercase.count {
                if selected == uppercase[j] {
                    stringResult += String(uppercase[(j + n) % 26])
                }
            }
        } else if selected == " " {
            stringResult += " "
        }
    }
    
    return stringResult
}

solution3("abcd", 2)
solution3("z", 1)
solution3("a B c D", 25)



// Comments
"""
Unicode Scalars 에 대해 전혀 알지 못했기 때문에 일단 좀 무식하게 풀었다.
이런 부분에서 부족함이 있구나 라는 것을 배운다.
아무튼 나는.
1. 소문자 / 대문자 / 공백을 분리하기로 했다.
2. 이를 토대로 글자 배열을 만든 후, 입력받은 String 의 개수만큼 for 문을 돌린다. 개수만큼 모든 String.Element 에 검사가 들어가야 하므로.
3. 그 다음 for 문 내에서 검사할 String.Element 를 추출했다. 또한 이 추출한 String.Element 에 대해 소문자 or 대문자 or 공백 을 먼저 검사해야 했다.
이 절차가 먼저 요소를 찾아낸 다음 진행되면 상당히 골치아파진다..
4. "z" 다음에는 "a" 로 돌아가기 때문에 이를 판별하려면 나머지를 구하면 되었다. 알파벳이 총 26개이니 26으로 나눈 나머지를 구해주면 되었다.
5. 이동하기 원하는 n 만큼을 찾아낸 위치에 더해준후 나머지를 구해주었다.
6. 그 결과값을 stringResult 에 담은 후 return 하였다.
"""

// 모범 답안
func solution4(_ s:String, _ n:Int) -> String {

  let opted = s.unicodeScalars
    .map { unicodeScala -> UInt32 in
      switch unicodeScala.value {
      case 65...90:
        return (((unicodeScala.value - 65 ) + UInt32(n)) % 26) + 65
      case 97...122:
        return (((unicodeScala.value - 97 ) + UInt32(n)) % 26) + 97
      case 32:
        return unicodeScala.value
      default:
        return unicodeScala.value
      }
    }
    .map { Unicode.Scalar.init($0) }
    .compactMap { $0 }
    .map { Character.init($0) }


  return String(opted)
}

// Comments
"""
Unicode Scalars 란?
Swift의 String 기본적으로 'Unicode Scalar' 값으로 이루어져 있다.
즉, Unicode Scalar를 조합하여 하나의 문자를 만들어 낼 수도 있다.

Unicode Scalar 는 U+0061 (소문자 a) 혹은 U+1F425 와 같은 문자나 수식어를 위해 21bit 번호들로 이루어진다.
모든 21-bit Unicode Scalar 가 문자에 할당되지는 않는다. 나중에 할당 할 수 있도록 예약되어 있다.
(Sourced by : https://brunch.co.kr/@letsean/5)

위에서 보는 65~90 이 소문자, 97 ~122 이 대문자, 32가 빈칸. 나머지를 구해줬으니 소문자의 경우 65부터 시작해주니 추가로 65 더하기.
아무튼 좀 아쉬웠지만 접근 방법은 틀리지 않았다.
"""
