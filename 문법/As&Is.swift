import Foundation

//Fruit 클래스 생성

class Fruit {
    var flower:String
    var tree:Bool
    
    init() {
        self.flower = "rose"
        self.tree = false
    }
}

//Fruit을 상속받는 Rosaceae
class Rosaceae: Fruit {
    var color : String
    
    override init() {
        //자신의 메모리 구조를 초기화 한 후 상위(부모) 속성의 메모리 이니셜라이저 호출이 필요.
        self.color = "blue"
        super.init()
    }
}

//타입 힌트는 Fruit이지만 실제 메모리 구조는 Rosaceae로 생성
let apple:Fruit = Rosaceae()
print(type(of: apple))     ////Rosaceae
apple.tree
apple.flower

//Fruit type의 프로퍼티에만 접근할 수 있다. (에러)
//apple.color


//apple 인스턴스를 Rosaceae로 타입캐스팅하여 appleWithRose에 담는다.
if let appleWithRose = apple as? Rosaceae {
    print(type(of: apple))          //Rosaceae
    print(type(of: appleWithRose))  //Rosaceae
    
    //Rosaceae type의 프로퍼티 flower에 접근 가능하도록 변경됨.
    print(appleWithRose.flower)
}
