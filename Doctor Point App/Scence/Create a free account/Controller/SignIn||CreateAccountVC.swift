//
//  SignIn||CreateAccountVC.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 26/02/2023.
//

import UIKit

class SignInOrCreateAccountVC: UIViewController {
    
    static let ID = String(describing: SignInOrCreateAccountVC.self)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInButton(_ sender: UIButton) {
        navigate(LoginViewController.ID)
    }
    
    @IBAction func createAccount(_ sender: UIButton) {
        navigate(SignInViewController.ID)
    }
}
