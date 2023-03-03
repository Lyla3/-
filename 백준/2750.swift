//
//  main.swift
//  2750
//


import Foundation
var numArray:[Int] = []

func swapNumber(a:inout Int,b:inout Int) {
    let temp = a
    a = b
    b = temp
}


let a = Int(readLine()!)!
for _ in 1...a {
    let b = Int(readLine()!)!
    numArray.append(b)
}

for i in 0...numArray.count-1 {
    for j in i...numArray.count-1 {
        if numArray[j] >= numArray[j+1] {
            var firstNum = numArray[j]
            var secondNum = numArray[j+1]
            
            swapNumber(a:&firstNum, b: &secondNum)
        }
    }
}

print(numArray)
