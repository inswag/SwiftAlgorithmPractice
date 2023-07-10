import Foundation

func solution(_ myString:String) -> [String] {
    return myString.split(separator: "x", omittingEmptySubsequences: true).map { String($0) }.sorted()
}

solution("dxccxbbbxaaaa")
