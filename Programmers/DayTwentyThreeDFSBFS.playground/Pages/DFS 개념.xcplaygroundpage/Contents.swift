//: [Previous](@previous)

import Foundation

/*
 - DFS
  * Depth-First Search 의 약자로, 탐색하려는 Node의 Child Node 부터 우선 탐색하는 방식
  * 탐색 Node 의 인접 Node 의 Child Node 를 모두 탐색 -> 탐색 Node의 다른 인접 Node 의 Child 를 모두 탐색
  * 왼쪽이 먼저냐 오른쪽이 먼저냐는 중요하지 않음
  * 가장 깊은 Node 까지 우선 탐색한다는 개념이 중요
 
 - DFS 구현 방식
  $ 인접 리스트 방식
   * Node 와 인접한 Node 들을 2차원 배열 형태로 구현
   * 예시
     let graph: [String: [String]] = [
         "A" : ["B", "C"],
         "B" : ["A", "D", "E"],
         "C" : ["A", "F"],
         "D" : ["B"],
         "E" : ["B"],
         "F" : ["C"],
     ]
   * 일반적으로 하나의 Queue 와 하나의 Stack 을 통해 구현
   * Stack 은 방문해야 하는 Node 저장용
   * Queue 는 이미 방문한 Node 저장용
   * Recursive 를 이용하면 좀 더 깔끔하게 구할 수 있음
 */

// Recursive 를 이용하지 않은 방식 -> 시간 복잡도 O(노드 수 + 간선 수)

func DFS(graph: [String: [String]], start: String) -> [String] {
    var visitedQueue: [String] = []
    var needVisitStack: [String] = [start]
    
    while !needVisitStack.isEmpty {
        let node: String = needVisitStack.removeLast()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
       needVisitStack += graph[node] ?? []
    }
    
    return visitedQueue
}


/*

 Reference
 - https://babbab2.tistory.com/107
 - https://www.youtube.com/watch?v=_hxFgg7TLZQ
 
 */
