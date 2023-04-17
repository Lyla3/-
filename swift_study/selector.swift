class ViewController: UIViewController {
    
    lazy var myButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("MyButton", for: .normal)
        button.frame = CGRect(x: 0.0, y: self.view.frame.height - 150, width: view.frame.width, height: 50.0)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(ViewController.doSomething(_:)), for: .touchUpInside)

        // 셀렉터의 사용
        //myButton.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        
    }
    
}
