//: [Previous](@previous)

import Foundation

/*
  - 트리 개념
   * 그래프의 일종, Node와 Edge를 이용한 데이터 구조.
   * Stack, Queue와 같은 선형구조가 아닌 비선형 자료구조
   * 트리에는 Cycle이 존재할 수 없다 -> 시작 노드에서 출발해 다른 노드를 거쳐 다시 시작 노드로 돌아올 수 있다면 사이클이 '존재' 한다고 한다.
   * 당연하겠지만 N개의 Node에는 N-1개의 Edge가 존재한다.
   * '계층적 관계를' 표현하는데 사용
  - 트리 주요 용어
   * Node
     $ 트리에서 데이터를 저장하는 기본 요소
   * Root Node
     $ 최상위 노드로 트리에서 Root Node 는 Only One
   * Leaf Node
     $ 최하위 노드로 Child Node 가 존재하지 않음
   * Edge
     $ Node를 연결하는 선
  - 트리의 종류
   * 이진트리 (binary tree)
     $ 각 Node 의 Child Node가 최대 2개인 트리.
   * 완전 이진트리 (Complete Binary Tree)
     $ 트리의 모든 Level 에서 Node 가 꽉 차 있는 이진트리.
     $ 마지막 Level을 제외하고 모든 레벨이 완전히 채워져 있다.
     $ 마지막 Level을 제외하지만 이 마지막 Level 에서 Node가 왼쪽에서 오른쪽으로 채워져야 한다.
     $ 완전 이진 트리는 배열을 사용해 효율적으로 표현 가능하다.
   * 포화 이진트리 (Perfect Binary Tree)
     $ 모든 Level에서 Node가 꽉 차있는 트리
     $ 모든 Node가 가득 차있기 때문에 (2의 Level 수 제곱) - 1 로 Node의 개수를 알 수 있다.
 
   * 이진 탐색트리 (Binary Search Tree)
     $ 이진 탐색이 항상 동작하도록 구현하여 탐색속도를 O(log N)으로 극대화시킨 자료구조
     $ 이진 탐색 알고리즘은 반씩 소거하여 탐색하는 알고리즘
     $ 자신의 왼쪽 Child Node에는 자신보다 작은 값이, 자신의 오른쪽 Child Node에는 자신보다 큰 값이 오는 규칙을 만족
     $ 이때, 모든 Node의 데이터 값은 유일(Unique)하며 Node의 데이터 값은 항상 존재한다는 가정 하에 구현
 
  - 트리의 순회
   * 트리의 모든 Node들을 방문하는 과정을 트리 순회라 한다.
   * 트리는 non-linear structure 이기 때문에, Node를 탐색하기 위한 방법이 필요.
   * 이 방법은 재귀(Recursive)를 사용하면 쉽게 구현 가능하다.
 
  - 트리의 순회 종류
   * 전위 순회
    $ Root Node -> Left Sub tree -> Right Sub tree 순서로 재귀적 탐색
   * 중위 순회
    $ Left Sub tree -> Root Node -> Right Sub tree 순서로 재귀적 탐색
   * 후위 순회
    $ Left Sub tree -> Right Sub tree -> Root Node 순서로 재귀적 탐색
 */
