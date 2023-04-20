class Dog {
    var name: String
    init(name: String) {
        self.name = name
    }
}



let dog1 = Dog(name: "초코")

dog1.name

"dog1.name"    // 이런식으로 접근하면 안될까?라는 생각으로 만들어짐.





let namePath = \School.affiliate.classMember.name      // 미리 경로를 지정 (keyPath)

school1[keyPath: namePath] 


//이전버전
person2.value(forKey: "name")

//변경버전
preson2.value(forKeyPath: #keyPath(Person.name))
