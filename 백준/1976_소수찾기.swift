import Foundation

var inputNum = Int(readLine()!)!
var numberArray = readLine()!.split(separator: " ").map{Int($0)!}
var countNum = 0

for i in numberArray {
    if i == 1 {
        continue
    } else {
        if i == 2 {countNum += 1}
        else{
        var isPrime = true
        for l in 2...(i-1) {
            if i % l == 0 {
                isPrime = false
                break
            }
        }
            if isPrime {
                countNum += 1
            }
        }
    }
}

print(countNum)
