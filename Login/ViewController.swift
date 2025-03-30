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
    
    
    @IBAction func login(_ sender: Any) {
        let id = idField.text!
        let password = passwordField.text!
        
        if id.isEmpty || password.isEmpty{
            print("계정을 입력하세요.")
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


}

