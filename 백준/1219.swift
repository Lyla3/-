var numArray : [Int] = []
var num = readLine()!.split(separator: " ").map{ Int($0)! }
var sum = 0

for i in 1...1000{
    for _ in 1...i{
        numArray.append(i)
    }
    
}
for i in num[0]...num[1] {
    sum += numArray[i-1]
}
print(sum)
