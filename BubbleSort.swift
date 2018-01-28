//: Playground - noun: a place where people can play

import UIKit

var myList = [Int]()

for i in 0...20 {
    i % 2 == 0 ? myList.append(i) : myList.append(i + i - 1)
    // myList.append(i + i + 2)
}
print("list size: \(myList.count)"); print("\(myList)")


var start = Date()
// var timeElapsed = Date().timeIntervalSince(start); print("\(timeElapsed)")


func bubble(unorderedList: [Int]) -> [Int] {
    
    var newList = unorderedList
    var x: Int; var y: Int; var z: Int; var passes: Int; var key: Int;
    
    for x in 0..<newList.count {
        
        passes = (newList.count - 1) - x // degrade the number of passes
        
        for y in 0..<passes {
            key = newList[y]
            // print("comparing: \(key) and \(newList[y + 1])")
            if key > newList[y + 1] {
                z = newList[y + 1]
                newList[y + 1] = key
                newList[y] = z
            }
        }
    }
    
    return newList
}


let sorted = bubble(unorderedList: myList); print("\(sorted)")
