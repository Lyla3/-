//싱글톤
// : 앱을 실행하는 동안, 유일하게 1개만 필요한 인스턴스의 경우 사용하는 패턴

class Sig{
    var num = 0
    var numOp : Int?
    static let shared = Sig()
    
    private init () {
        num = 1
    }
    
}

var a = Sig.shared
print(a.num)

a.num = 3
print(a.num)

var b = Sig.shared
print(b.num)
