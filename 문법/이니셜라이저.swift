class Aclass {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    convenience init() {
        self.init(x: 0, y: 0)
    }
}



// 아래의 주석을 제거하고 코드를 구현

class Bclass: Aclass {

    var z: Int

    // 이 부분에 지정생성자 및 편의 생성자(상위의 지정생성자를 재정의해서) 구현
    init(z:Int){
        self.z = z
        super.init(x: x, y: y)
    }

    override convenience init(x: Int, y: Int) {
      
        //편의 이니셜라이저는 값을 할당하기 전에 다른 이니셜라이저를 호출해야함
        self.init()
        self.z = 0
       
    }

} 

