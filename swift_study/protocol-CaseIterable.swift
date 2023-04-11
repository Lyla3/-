//CaseIterable - 열거형과 묶어서 사용 case를 셀 수 있게 함

enum Color: CaseIterable {  
    case red, green, blue
}



Color.allCases     // 배열로 결과값 출력-> [Color.red, Color.green, Color.blue]
print(Color.allCases)

enum CompassDirection: CaseIterable {
    case north, south, east, west
}

//allCases 이용
print("방향: \(CompassDirection.allCases.count)개")

//랜덤 케이스 출력
let randomValue = CompassDirection.allCases.randomElement()


