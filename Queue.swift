//: Playground - noun: a place where people can play

import UIKit

// linked list node
class Node { // struct can't be self referencing
    init(value: Int) {
        self.value = value
        self.next = nil
    }
    let value: Int
    var next: Node?
}

class Queue { // first in, first out
    
    var first: Node?
    var last: Node?
    
    init() {
        
    }
    
    func enqueue(node: Node) -> Void {
        if let _ = first { // if we already have a first, we also have a last, so last value's new next = node
            last?.next = node
            last = node
        } else { // if no first, we have a queue size of 1
            first = node
            last = first
        }
    }
    
    func dequeue() -> Node? { //
        if let f = first {
            let temp = Node(value: f.value) // return a new Node with the value of first
            first = f.next // set first to it's next value
            return temp
        } else {
            return nil
        }
    }
}
