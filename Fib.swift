//: Playground - noun: a place where people can play

import UIKit

// recursive and iterative

// binary search, fibbonoci, find k-th smallest/greatest element, string find, pallandrome, linked list, tree operations

func fibboniciR(f1: Int, f2: Int) {
    
    if f1 > 1504 {
        return
    }
    let f = f1 + f2; print("\(f)")
    fibboniciR(f1: f, f2: f1)
}

// fibboniciR(f1: 0, f2: 1)

func fibboniciI() {
    
    var sum = 0;
    var f1 = 0;
    var f2 = 1;
    
    while sum < 144 {
        sum = f1 + f2
        f1 = f2
        f2 = sum
        print("\(sum)")
    }
}

//fibboniciI()
