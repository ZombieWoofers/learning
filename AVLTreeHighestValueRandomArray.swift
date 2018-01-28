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
                let rightChild: AVLTree = AVLTree()
                rightChild.key = key
                self.right = rightChild
            }
        }
    }

}

var randomArray = [Int]()

for i in 0...100 {
    i % 2 == 0 ? randomArray.append(i) : randomArray.append(i + i - 1)
    //randomArray.append(i)
}

print("\(randomArray)")

var root = AVLTree<Int>()
// root.key = 5

for number in randomArray {
    root.addNode(key: number)
}

func outputTreeValues(nextTree: AVLTree<Int>?, newHighest: Int) {
    
    if let r = nextTree?.right {
        guard let k = r.key else {
            return
        }
        if k > newHighest {
            // print("highest value: \(newHighest)")
            outputTreeValues(nextTree: r, newHighest: k)
        }
    } else {
        print("highest value: \(newHighest)")
    }

}

outputTreeValues(nextTree: root, newHighest: 0)



