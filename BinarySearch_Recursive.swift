//: Playground - noun: a place where people can play

import UIKit

var randomArray = [Int]()

for i in 0...50 {
    // i % 2 == 0 ? randomArray.append(i) : randomArray.append(i + i - 1)
}
// print("\(randomArray)")

var orderedArray = [Int]()

for i in 1...2000 {
    orderedArray.append(i + i + 2)
}
print("list size: \(orderedArray.count)")

var start = Date()
// var timeElapsed = Date().timeIntervalSince(start); print("\(timeElapsed)")

func recursiveBinary(key: Int, orderedList: [Int], sizeLow: Int, sizeHigh: Int) -> Int {

    if sizeLow > sizeHigh {
        return -1
    }
    
    let mid = sizeLow + ((sizeHigh - sizeLow) / 2)
    if orderedList[mid] == key {
        return mid;
    }
    
    if key < orderedList[mid] { // here we can just say higher or lower and let default return the other
        return recursiveBinary(key: key, orderedList: orderedList, sizeLow: sizeLow, sizeHigh: mid - 1)
    }
    
    return recursiveBinary(key: key, orderedList: orderedList, sizeLow: mid + 1, sizeHigh: sizeHigh)
    
}
let myKey = 500
let solution = recursiveBinary(key: myKey, orderedList: orderedArray, sizeLow: 0, sizeHigh: orderedArray.count - 1)
print("key: \(myKey) at index: \(solution)")
var timeElapsed = Date().timeIntervalSince(start); print("\(timeElapsed)")
