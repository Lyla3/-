import UIKit

class Person {
    class func sing(){
        print("노래하다")
    }
    static func lying(){
        print("휴식중...")
    }
}

class Idol:Person{
    
    override class func sing(){
        print("idol⭐️")
        print("노래하다")
    }
    //!오류 발생: Cannot override static method.
//    override static func lying(){
//
//    }
    //인스턴스 메서드
    func play(){
        print("오늘은 게임해요")
    }
}

Person.sing()
Idol.sing()
Idol.lying()

//클래스의 인스턴스를 만들어 실체화
var mina : Idol = Idol()

//실체화 하여 실행
mina.play()
