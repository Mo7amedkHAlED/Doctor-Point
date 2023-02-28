//
//  LoginViewController.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 27/02/2023.
//

import UIKit

class LoginViewController: UIViewController {
    static let ID = String(describing: LoginViewController.self)
    
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func showPAssword(_ sender: UIButton) {
        
        passwordTF.isSecureTextEntry = !passwordTF.isSecureTextEntry
    }
    
    @IBAction func createAccountButton(_ sender: UIButton) {
        navigate(SignInViewController.ID)
    }
    
    @IBAction func loginButton(_ sender: Any) {
        navigate(ControllerVC.ID)
    }
    
}
