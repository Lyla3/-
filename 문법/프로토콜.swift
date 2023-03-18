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
