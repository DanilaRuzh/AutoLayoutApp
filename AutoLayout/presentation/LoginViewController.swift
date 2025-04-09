//
//  ViewController.swift
//  AutoLayout
//
//  Created by Danila on 03.11.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextFieldLabel: UILabel!
    
    private let correctLogin: String = "admin"
    private let correctPassword: String = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myButton.layer.cornerRadius = 10
//        myButton.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    @IBAction func editingChanged(_ sender: UITextField) {
//        print("loginTextField = \(loginTextField.text)")
        if (sender.text?.count ?? 0) > 5 {
            loginTextFieldLabel.textColor = .red
            
        }else {
            loginTextFieldLabel.textColor = .green
        }

    }
    
    
    @IBAction func didTap(_ sender: UIButton) {
        let login = loginTextField.text
        let password = passwordTextField.text
        
        guard login == correctLogin,
                password == correctPassword
        else {
            print("Incorrect login and password")
            return
        }
        print("Correct login and password")
        dismiss(animated: true)
        
    }
    
}

