import UIKit


// first way

print("\(reverseString(input: myString))")

func reverseString(input: String) -> String {

    var newString = ""
    var temp = input
    
    for _ in 0...temp.characters.count {
        if let last = temp.characters.last {
            newString.append(last)
            temp.removeLast()
        }
    }
    
    return newString
}

let myString = "hello there andrew"

