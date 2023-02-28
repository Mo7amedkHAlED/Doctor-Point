//
//  SigInViewController.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 27/02/2023.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var passwordTXF: UITextField!
    static let ID = String(describing: SignInViewController.self)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showPassword(_ sender: UIButton) {
        passwordTXF.isSecureTextEntry = !passwordTXF.isSecureTextEntry

    }
    @IBAction func SignInButton(_ sender: UIButton) {
        navigate(LoginViewController.ID)
    }
}
