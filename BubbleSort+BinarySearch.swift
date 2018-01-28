//: Playground - noun: a place where people can play

import UIKit

// recursive and iterative
// heap, heap_sort, find k-th smallest/greatest element, string find, pallandrome, linked list, tree operations

//: Playground - noun: a place where people can play

import UIKit

var myList = [Int]()

for i in 0..<50 {
    i % 2 == 0 ? myList.append(i) : myList.append(i + i - 1)
    // myList.append(i + i + 2)
}
print("list size: \(myList.count)"); // print("\(myList)")


var start = Date()
// var timeElapsed = Date().timeIntervalSince(start); print("\(timeElapsed)")


func bubble(unorderedList: [Int]) -> [Int] {
    
    var newList = unorderedList
    var temp: Int; var passes: Int; var key: Int;
    
    for x in 0..<newList.count {
        
        passes = (newList.count - 1) - x // degrade the number of passes
        
        for y in 0..<passes {
            key = newList[y]
            // print("comparing: \(key) and \(newList[y + 1])")
            if key > newList[y + 1] {
                temp = newList[y + 1]
                newList[y + 1] = key
                newList[y] = temp
            }
        }
    }
    
    return newList
}


let sorted = bubble(unorderedList: myList); // print("\(sorted)")

func recursiveBinary(key: Int, orderedList: [Int], sizeLow: Int, sizeHigh: Int) -> Int {
    
    if sizeLow > sizeHigh {
        return -1
    }
    
    let mid = sizeLow + ((sizeHigh - sizeLow) / 2)
    
    if orderedList[mid] == key {
        return mid;
    }
    
    if key < orderedList[mid] { // here we can just say higher or lower and let default return the other
        print("\(key) is lower than \(orderedList[mid])")

        return recursiveBinary(key: key, orderedList: orderedList, sizeLow: sizeLow, sizeHigh: mid - 1)
    }
    
    print("\(key) is higher than \(orderedList[mid])")

    return recursiveBinary(key: key, orderedList: orderedList, sizeLow: mid + 1, sizeHigh: sizeHigh)
    
}

let findMe = 49
print("find index of: \(findMe)")
let findKey = recursiveBinary(key: findMe, orderedList: sorted, sizeLow: 0, sizeHigh: sorted.count - 1)
print("\(findMe) is at index: \(findKey)")
