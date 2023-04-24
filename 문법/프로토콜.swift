//protocol 구현

protocol popViewDelegate {
 func popupView()
}

//protocol 채택, popView의 delegate가 되어줌. 
class ViewController: UIViewController,popupViewDelegate {
  let vc = AddMealViewController()
  vc.viewDelegate = self
  
  func popupView() {
    //popupView()실행 시 세부 내용 구현
  }
}


class AddMealViewController : UIViewController {
    
    //delegate의 type을 popupViewDelegate으로 정함
    var viewDelegate: popupViewDelegate?
    
    
    //대리자(delegate)에 popView메서드 실행할 수 있도록 함 
    self.viewDelegate?.popupView()
    
    }


//protocol의 서브스크립트 구현 get 구현시 get은 필수로 구현해주어야 함
protocol DataList {
    subscript(idx: Int) -> Int {get}
}

struct DataStucture : DataList {
     subscript(idx: Int) -> Int {
         return 0 
     }
}

extension Remote {
    func turnOn() {print("리모컨 켜기")}
    func turnOff() {print("리모컨 끄기")}
    
    func doAnother() {
        print("리모컨 다른 동작")
    }
}

struct LgTv:Remote {
    func turnOn() {print("TV 켜기")}
    func turnOff() {print("TV 끄기")}
    
    func doAnother() {
        print("TV 다른 동작")
    }
}


class Mp3:Remote {
    func turnOn() {print("Mp3 켜기")}
    func turnOff() {print("Mp3 끄기")}
    
    func doAnother() {
        print("Mp3 다른 동작")
    }
}

var tv1 = LgTv()
tv1.doAnother() // TV 다른 동작

var tv2:Remote = LgTv()
tv2.doAnother() // 리모컨 다른 동작

var mp3 = Mp3()
mp3.doAnother() //Mp3 다른 동작

var mp4:Remote = Mp3()
mp4.doAnother() // 리모컨 다른 동작

//프로토콜의 확장: 메서드 기본 구현 제공 
protocol Remote {
    func turnOn()
}

extension Remote {
    func turnOn() {print("리모컨 동작")}
    
    func doAnotherAction() {print("리모컨 다른 동작")}
}

class TV : Remote {
   func doAnotherAction() {
       print("tv 다른 동작")
   }
}

var tv1 = TV()
tv1.turnOn()
tv1.doAnotherAction()  // 요구사항 메서드가 아닌 경우, 객체의 타입을 따름. 
