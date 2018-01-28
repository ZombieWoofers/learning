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

class Stack { // last in, first out
    
    var top: Node?
    
    init(top: Node) {
        self.top = top
    }
    
    func getTop() -> Node? { // this is nice way to encapsulate null check
        return top
    }
    
    func pop() -> Node? {
        if let topNode = top {
            let temp = Node(value: topNode.value)
            self.top = topNode.next // set the top to the next value
            return temp
        } else {
            return nil
        }
    }
    
    func push(node: Node) -> Void {
        // null check here in example but prob just say Node? why would you push null though..?
        if let _ = node.next {
            node.next = top  // our new node next now points to the top
            top = node // our top now == the new node
        }
    }
}
