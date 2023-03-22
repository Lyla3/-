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

class Bclass: Aclass {

    var z: Int
    
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



class Cclass: Aclass {
    var z : Int
    
    //지정생성자
    init(x: Int, y: Int, z: Int) {
        self.z = z
        super.init(x: x, y: y)
    }
    
    //생성자 재정의 
    override convenience init(x: Int, y: Int) {
        //지정생성자 호출 -> 편의생성자
        self.init(x: 0, y: 0, z: 0)
    }
}


