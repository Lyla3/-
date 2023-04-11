struct Dog {
    var name: String
    var age: Int
}

//구조체 비교 시 Comparable 프로토콜 채택 필요
extension Dog: Comparable {
    static func < (lhs: Dog, rhs: Dog) -> Bool {
        return lhs.age < rhs.age
    }
    
}

let dog1 : Dog = Dog(name: "해피", age: 10)
let dog2 : Dog = Dog(name: "보리", age: 2)

print(dog2<dog1) //true
