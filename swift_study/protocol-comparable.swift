struct Dog {
    var name: String
    var age: Int
}

extension Dog: Comparable {
    static func < (lhs: Dog, rhs: Dog) -> Bool {
        return lhs.age < rhs.age
    }
    
}

let dog1 : Dog = Dog(name: "해피", age: 10)
let dog2 : Dog = Dog(name: "보리", age: 2)

print(dog2<dog1) //true
