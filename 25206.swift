
import Foundation


var gradeDic : [String:Double] =
["A+":4.5,
 "A0":4.0,
 "B+":3.5,
 "B0":3.0,
 "C+":2.5,
 "C0":2.0,
 "D+":1.5,
 "D0":1.0,
 "F":0.0]

var scoreArray : [[String]] = []
var sumscore : Double = 0
var sumcredit: Double = 0

//var score = readLine()!.split{$0 == " "}

//2차원 배열로 입력받기
for _ in stride(from:0, to:20 , by:1){
    scoreArray.append(readLine()!.split(separator: " ").map { String($0) })
}

for i in 0...19{
    if scoreArray[i][2] == "P" {
        continue
    } else {
        if gradeDic[scoreArray[i][2]] != nil {
            var a = gradeDic[scoreArray[i][2]]!*(Double(scoreArray[i][1]) ?? 0)
            
            sumscore += a
            sumcredit += Double(scoreArray[i][1])!
        }
    }
}


print(sumscore/sumcredit)
