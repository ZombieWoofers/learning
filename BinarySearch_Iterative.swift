//: Playground - noun: a place where people can play

import UIKit

var randomArray = [Int]()

for i in 0...50 {
    // i % 2 == 0 ? randomArray.append(i) : randomArray.append(i + i - 1)
}
// print("\(randomArray)")

var orderedArray = [Int]()

for i in 1...100 {
    orderedArray.append(i + i + 2)
}
print("list size: \(orderedArray.count)")

var start = Date()
// var timeElapsed = Date().timeIntervalSince(start); print("\(timeElapsed)")

func binaryIterate(array: [Int], key: Int, size: Int) -> Int {
    
    var low = 0
    var high = size - 1
    
    while(low <= high) {
        
        let mid = low + ((high - low) / 2); //print("mid: \(mid)")
        
        if array[mid] == key {
            return mid
        }
        
        if key < array[mid] {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    
    return -1
}

let myKey = 30
let solution = binaryIterate(array: orderedArray, key: myKey, size: orderedArray.count - 1)
print("key: \(myKey) is at at index: \(solution)")
