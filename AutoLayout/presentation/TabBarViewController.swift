//
//  TabBarViewController.swift
//  AutoLayout
//
//  Created by Danila on 07.11.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private var isUserLogin: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !isUserLogin {
            showLogin()
            isUserLogin = true
        }
    }
    
    private func showLogin() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC")
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: false)
        
    }

}
