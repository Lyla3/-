struct Dog {
    var name: String
    var age: Int
}

extension Dog: Hashable {}


// 이렇게 전체 구현할 필요 없음
//extension Dog: Hashable {
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//        hasher.combine(age)
//    }
//}


let dog1: Dog = Dog(name: "마루", age: 10)
let dog2: Dog = Dog(name: "해피", age: 2)


let dogSet: Set = [dog1, dog2]
