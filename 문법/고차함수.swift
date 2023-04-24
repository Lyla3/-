let numbers: [Int] = [1,2,3,4,5]
var doubleNum : [Int] = []

doubleNum  = numbers.map({ (number:Int) -> Int in
	//클로저의 실행
	return number * 2
})
