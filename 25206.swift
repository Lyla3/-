import Foundation


var gradeDic : [String:Double] =
["A+":4.5,
 "A0":4.0,
 "B+":3.5,
 "B0":3.0,
 "C+":2.5,
 "C0":2.0]

var scoreArray : [[String]] = []


//2차원 배열로 입력받기
scoreArray.append(readLine()!.split(separator: " ").map { String(String($0)) })

print(scoreArray)
