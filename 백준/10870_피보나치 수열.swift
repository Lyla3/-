import Foundation

var input = Int(readLine()!)!

var fibonacciNumArray:[Int] = [0,1]
var sum = 0

func useForloop(a:Int) {
    if input >= 2 {
        for i in 1...input-1{
            fibonacciNumArray.append(fibonacciNumArray[i-1]+fibonacciNumArray[i])
        }
        print(fibonacciNumArray.last!)
    } else {
        print(fibonacciNumArray[input])
    }
}
