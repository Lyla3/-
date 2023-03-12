import Foundation

var numberTuple : (Int,Int)
var numberTupleArray : [(Int,Int)]

var firstNumber : Int
var secondNumber : Int

//무한루프 이용해서 조건 탐색
while true{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    firstNumber = input[0]
    secondNumber = input[1]
    
    if firstNumber == 0 && secondNumber == 0 {
        //break문으로 현재 루프 종료
        break
    }
    
    if firstNumber > secondNumber {
        if firstNumber % secondNumber == 0 {
            print("multiple")
        } else {
            print("neither")
        }
    } else {
        if  secondNumber % firstNumber == 0 {
            print("factor")
        } else {
            print("neither")
        }
    }
}
