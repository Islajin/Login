//
//  ViewController.swift
//  Login
//
//  Created by yeonjin on 3/30/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    //경고창을 표시하는 코드
    func showAlert(message : String) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        present(alert, animated : true)
    }
    
    @IBAction func login(_ sender: Any) {
        
        guard let id = idField.text, !id.isEmpty else {
         showAlert(message: "아이디를 입력하세요.")
            return
        }
       
        guard let password=passwordField.text,!password.isEmpty else {
            showAlert(message: "비밀번호를 입력하세요.")
            return
        }
        
        
        if id == "kwcoding"  && password == "1234"{
                resultLabel.text="로그인 성공"
        }else {
            resultLabel.text="로그인 실패"
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
        //idField에
        idField.becomeFirstResponder()
    }
}

