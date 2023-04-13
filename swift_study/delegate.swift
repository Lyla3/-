import UIKit

//뷰컨트롤러에서 UITextFieldDelegate 채택
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //delegate설정, 여기서의 self는 viewcontroller를 의미
        textField.delegate = self
        
        setup()
    }
    
    func setup() {
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "이메일 입력"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .go
    }
    
    //텍스트 필드의 입력을 시작할 때 호출 (시작할지 말지의 여부 허락하는 것)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    // 시점 - 텍스트 필드의 입력이 시작되는 시점
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("유저가 텍스트 필드의 입력을 시작함.")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let maxLength = 10
        let currentString: NSString = (textField.text ?? "") as NSString
        let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
        
    }

    @IBAction func inputbtnPressed(_ sender: UIButton) {
        print(textField.text)
        textField.text = ""
        
    }
}
