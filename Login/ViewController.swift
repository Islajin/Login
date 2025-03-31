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


extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function , textField)
        
        switch textField {
        case idField:
            passwordField.becomeFirstResponder()
        case passwordField:
            login(self) //코드가 겹치기 때문에 액션login 을 호출할 숭 있음, 어차피 액션 안에서 이 샌더 파라미터를 쓰지 않고 있으니까 어떤 걸 보내도 문제가 안됨
        default :
            break
            
        }
        return false
    }
    
    //아이디의 길이에 제한주기
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField  == idField {
            let cnt = textField.text? .count ?? 0
            let isValdId = (6 ... 12).contains(cnt)
            
            
            return isValdId
        }
        
        return true
    }
    
}


