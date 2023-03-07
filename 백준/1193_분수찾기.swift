//
//  main.swift
//  1193
//
//  Created by Lyla on 2023/03/07.
//

var inputNum = Int(readLine()!)!

var sum = 1

while sum < inputNum {
    inputNum = inputNum - sum
    sum += 1
}

if sum % 2 != 0 {
    print("\(sum+1-inputNum)/\(inputNum)")
    
} else {
    print("\(inputNum)/\(sum+1-inputNum)")
}
