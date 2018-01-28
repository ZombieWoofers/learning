//: Playground - noun: a place where people can play

import UIKit

var randomArray = [Int]()

for i in 0...20 {
    i % 2 == 0 ? randomArray.append(i) : randomArray.append(i + i - 1)
}
print("\(randomArray)")

var orderedArray = [Int]()

for i in 1...25 {
    //orderedArray.append(i + i + 2)
}
print("list size: \(randomArray.count)")

var start = Date()
// var timeElapsed = Date().timeIntervalSince(start); print("\(timeElapsed)")


func insertionSort(unorderedList: [Int]) -> [Int] {
    
    var list = unorderedList

    var y: Int; var key: Int
    
    for x in 0..<list.count {
        
        key = list[x]
        y = x
        
        let newStart = list[0...y]
        
        for (index, value) in newStart.reversed().enumerated() {
            print("index:\(index) value: \(value)")
            if key < value {
                list.remove(at: y + 1)
                list.insert(key, at: y)
            }
        }
    }
    
    return list
}


let sorted = insertionSort(unorderedList: randomArray)
print("\(sorted)")
