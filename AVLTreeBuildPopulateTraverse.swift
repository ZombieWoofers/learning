//: Playground - noun: a place where people can play

import UIKit

class TreeNode {
    
    var value: Int?
    var left: TreeNode?
    var right: TreeNode?
    
    init() {}
    
    init(value: Int) {
        value
    }
}

class AVLTree <T: Comparable> {  // AVL is Balanced Binary Search Tree
    var key: T?
    var left: AVLTree?
    var right: AVLTree?
    
    func addNode(key: T) {
        
        // are we at the head?
        if self.key == nil {
            self.key = key
            return
        }
        
        if key < self.key! {
            if self.left != nil {
                left?.addNode(key: key)
            } else {
                // create a node
                let leftChild: AVLTree = AVLTree()
                leftChild.key = key
                self.left = leftChild
            }
        }
        
        if key > self.key! {
            if self.right != nil {
                right?.addNode(key: key)
            } else {
                // create a new node
                let rightChild: AVLTree = AVLTree()
                rightChild.key = key
                self.right = rightChild
            }
        }
    }

}

var randomArray = [Int]()

for i in 0...20 {
    i % 2 == 0 ? randomArray.append(i) : randomArray.append(i + i - 1)
    //randomArray.append(i)
    
}

print("\(randomArray)")

var root = AVLTree<Int>()
// root.key = 5

for number in randomArray {
    root.addNode(key: number)
}

func outputTreeValues(nextTree: AVLTree<Int>?) {
    
    if let r = nextTree?.right, let k = r.key {
        print("right key: \(k)")
        
        if let rl = r.left, let lk = rl.key {
            print("left key: \(lk)")
        }
        outputTreeValues(nextTree: r)
    } else if let l = nextTree?.left, let k = l.key {
        print("left key: \(k)")
        if let rl = l.right, let lk = rl.key {
            print("left key: \(lk)")
        }
        outputTreeValues(nextTree: l)
    }
}

outputTreeValues(nextTree: root)



