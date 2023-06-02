//myProperty가 변경되면 _myProperty에 값을 새로 저장함
var _myProperty: Int
var myProperty: Int {
   get {
      return _myProperty
   }
   set(newVal) {
      _myProperty = newVal
   }
}



class Point {
    var tempX : Int = 1 //get, set을 사용하기 위해서는 그 연산된 값을 저장할 변수가 반드시 있어야한다.
    
    var x: Int { //x의 역할은 tempX에 대해서 값을 연산해서 tempX에 할당하거나 리턴하는 역할만 한다.
        get {
            print("get 실행")
            return tempX
        }
        set(newValue) {
            print("set 실행")
            tempX = newValue * 2
        }
    }
}

var p: Point = Point()
    //set : 새로운 값을 할당 할 시에 실행되는 메서드
p.x = 12

    //get : 값을 얻어올 시에 실행되는 메서드
print(p.x)



