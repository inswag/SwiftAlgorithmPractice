//: [Previous](@previous)

import Foundation

/*
 Queue
 - First In First Out 구조의 자료구조
 - Queue 를 구성하는 함수
  $ enqueue() - 맨 끝에 데이터를 추가
  $ dequeue() - 맨 앞에서 데이터를 꺼냄
  $ isEmpty() - Queue가 비었는지 확인
 */

struct Queue<T> {
    
    private var queue: [T] = []
    
    private var isEmpty: Bool {
        return queue.count == 0
    }
    
    public mutating func enqueue(_ item: T) {
        queue.append(item)
    }
    
    public mutating func dequeue(item: T) -> T? {
        return isEmpty ? nil : queue.removeFirst() // removeFirst() -> O(N)
    }
    
}

